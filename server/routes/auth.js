const express = require("express");
const authrouter = express.Router();
const bcyrptjs= require("bycrptjs");
const User = require("../model/user");


//Sign up
authrouter.post("/api/signup/", async(req,res)=>{

    try{
const {name,email,password}=req.body;
const existingUser= await User.findOne({email});
if(existingUser){
    return res.status(400).json({msg: "User with same email already exists!"});
}

const hashedPassword = await bcyrptjs.hash(password,8);

let user = new User({
    email,password:hashedPassword,name,
});
user = await user.save();
    }
    catch(e){}
});

module.exports = authrouter;