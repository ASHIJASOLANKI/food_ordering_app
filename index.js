
var express = require('express')
var ejs = require('ejs')
var bodyParser = require('body-parser')
var mysql = require('mysql');
var session = require('express-session')

var app = express();

app.use(express.static('public'));
app.set('view engine', 'ejs');

app.listen(26)
app.use(bodyParser.urlencoded({extended: true}))
app.use(session({secret:"secret",
    resave: false,
    saveUninitialized: true,
}))

//products in cart

function isProductInCart(cart,id){
    for(let i=0; i<cart.length; i++){
        if(cart[i].id == id){
            return true;
        }
    }

    return false;
}

// calculating total
function calculateTotal(cart, req){
    total = 0;
    for(let i=0; i<cart.length; i++){
        //if we're offering a discount price
        if(cart[i].sale_price){
            total = total + (cart[i].sale_price*cart[i].quantity);
        }else{
            total = total + (cart[i].price*cart[i].quantity)
        }
    }
    req.session.total = total;
    return total;
}

//localhost:
app.get('/', function(req, res){
    var connection = mysql.createConnection({
        host:"localhost",
        user:"root",
        password: "",
        database:"project"
    })

    connection.query("SELECT * FROM products", (err,result) => {
        res.render("pages/index", {result:result})
        })
});

// all about cart
app.post('/add_to_cart', function(req, res){
    var id = req.body.id;
    var name = req.body.name;
    var price = req.body.price;
    var sale_price = req.body.sale_price;
    var quantity = req.body.quantity;
    var image = req.body.image;
    var product = {id:id, name:name, price:price, sale_price:sale_price, quantity:quantity, image:image};



    if(req.session.cart){
        var cart = req.session.cart;
        if(!isProductInCart(cart, id)){
            cart.push(product);
        }} else {
            req.session.cart = [product];
            var cart = req.session.cart;
        }

        //calculate total
        calculateTotal(cart, req);

        //return to cart page
        res.redirect('/cart');
    


});

app.get('/cart', function(req, res){
    var cart = req.session.cart;
    var total = req.session.total;

    res.render("pages/cart", {cart:cart,total:total})
});

//remove product from cart
app.post('/remove_product',function(req,res){

    var id = req.body.id;
    var cart = req.session.cart;
 
    for(let i=0; i<cart.length; i++){
       if(cart[i].id == id){
          cart.splice(i, 1);
          break;
       }
    }
 
    //re-calculate
    calculateTotal(cart,req);
    res.redirect('/cart');
 
 });

//edit_product_quantity
app.post('/edit_product_quantity', function(req, res){
    //get values from inputs
    var id =req.body.id;
    var quantity = req.body.quantity;
    var decrease_btn = req.body.decrease_product_quantity;
    var increase_btn = req.body.increase_product_quantity;

    const cart = req.session.cart;
    if(decrease_btn){
        for(let i=0; i<cart.length; i++){
            if (cart[i].id == id){
                if (cart[i].quantity > 1){
                    cart[i].quantity = parseInt(cart[i].quantity)-1;
                }
            }
        }
    }

    if(increase_btn){
        for(let i=0; i<cart.length; i++){
            if (cart[i].id == id){
                if (cart[i].quantity > 0){
                    cart[i].quantity = parseInt(cart[i].quantity)+1;
                }
            }
        }
    }

    calculateTotal(cart, req);
    res.redirect('/cart');

})

//checkout
app.get('/checkout', function(req, res){
    var total = req.session.total
    res.render('pages/checkout',{total:total})
})

// placing order
app.post('/place_order', function(req, res){
    var name = req.body.name;
    var email = req.body.email;
    var phone = req.body.phone;
    var city = req.body.city;
    var address = req.body.address;
    var cost = req.session.total;
    var status = "not paid";
    var date = new Date();
    var product_ids = "";
    var id = Date.now();
    req.session.order_id = id;

    const connection = mysql.createConnection({
        host:"localhost",
        user:"root",
        password: "",
        database:"project"
    })

    var cart = req.session.cart;
    for(let i=0; i<cart.length; i++){
        product_ids = product_ids + ","+ cart[i].id;
    }

    connection.connect((error)=>{
        if(error){
            console.error(error);

        } else{
            var query = 'INSERT INTO orders(id, cost, name, email, status, city, address, phone, date, product_ids) VALUES ?';
            var values = [
            [id, cost, name, email, status, city, address, phone, date, product_ids]
            ];
            connection.query(query,[values],(error, result)=>{
                for(let i = 0; i<cart.length; i++){
                    var query = "INSERT INTO orders_items(order_id, product_id, product_name, product_price, product_image, product_quantity, order_date) VALUES?";
                    var values = [
                        [cart[i].id, cart[i].name, cart[i].price, cart[i].image, cart[i].quantity, new Date()]
                    ];
                    connection.query(query,[values],(error, result)=>{})
                }
                res.redirect('/payment')
            })
        }
    })

})

//payment
app.get('/payment', function(req, res){
    var total = req.session.total;
    res.render('pages/payment', {total:total})
})

//verify_payment
app.get("/verify_payment", function(req,res){
    var transaction_id = req.query.transaction_id;
    var order_id = req.session.order_id;
    var connection = mysql.createConnection({
        host:"localhost",
        user:"root",
        password: "",
        database:"project"
    })
    connection.connect((error)=>{
        if(error){
            console.error(error);

        } else{
            var query = 'INSERT INTO payments (order_id, transaction_id, date) VALUES ?';
            var values = [
            [order_id, transaction_id, new Date()]
            ];
            connection.query(query,[values],(error, result)=>{

                connection.query("UPDATE orders SET status='paid' WHERE id = '"+order_id+"'", (err, result)=>{})
                
                res.redirect('/thank_you')
            })
        }
    })
})

//thank you
app.get('/thank_you', function(req, res){
    var order_id = req.session.order_id;
    res.render("pages/thank_you",{order_id:order_id})
})

//single_product
app.get('/single_product',function(req,res){
    var id = req.query.id;
 
    var connection = mysql.createConnection({
       host:"localhost",
       user:"root",
       password:"",
       database:"project"
    })
 
    connection.query("SELECT * FROM products WHERE id='"+id+"'",(err,result)=>{
       res.render('pages/single_product',{result:result});
    })
    
 });
 
 //products
 app.get('/products',function(req,res){
 
    var connection = mysql.createConnection({
       host:"localhost",
       user:"root",
       password:"",
       database:"project"
    })
 
    connection.query("SELECT * FROM products",(err,result)=>{
       res.render('pages/products',{result:result});
    })
    
 });
 
 app.get('/about',function(req,res){
    
    res.render('pages/about');
 });

 app.get('/index',function(req,res){
    
    res.redirect('pages/index');
 });










 