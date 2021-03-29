import 'package:flutter/material.dart';
import 'package:my_shoes/core/const.dart';

class ShoeModel{
final String name;
final double price;
final String desc;
final Color color;
final String brand;
final String imgPath;

  ShoeModel({this.name, this.price, this.desc, this.color, this.brand, this.imgPath});
static List<ShoeModel> list =[
  ShoeModel(name: "Nike Air  Jordan 1 Retro high",
  desc: "Familiar but always fresh,the iconicAir Jordan 1 is remastered for today,s trend.",
  price: 184,
  color: AppColors.blueColor,
  brand: "Nike",
  imgPath:"blue.jpg"),
  ShoeModel(
      name: "Converse X OPI Chuck Taylor",
      desc: "Familiar but always fresh,the iconicAir Jordan 1 is remastered for today,s trend.",
      price: 123,
      color: AppColors.yellowColor,
      brand: "Converse",
      imgPath:"green.jpg"),
  ShoeModel( name: "Nike Air  Jordan 1 Retro high",
      desc: "Familiar but always fresh,the iconicAir Jordan 1 is remastered for today,s trend.",
      price: 200,
      color: AppColors.redColor,
      brand: "Converse",
      imgPath:"red.jpg"),


];

}