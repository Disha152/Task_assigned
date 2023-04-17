const express = require('express');
const mongoose = require('mongoose');
const authrouter = require('./routes/auth');

const PORT = process.env.PORT || 3000;
const app = express();

app.use(express.json());
app.use(authrouter);
const DB= "mongodb+srv://disha29082001:test123@cluster0.7hm4nzy.mongodb.net/?retryWrites=true&w=majority" ;

mongoose.connect(DB).then(()=>{
    console.log("Connected to DB");
}).catch((e)=>{
    console.log(e);
});

app.listen(PORT,"0.0.0.0",()=>
    console.log(`Server started on port ${PORT}`));