import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:my_shoes/core/const.dart';
import 'package:my_shoes/core/flutter_icons.dart';
import 'package:my_shoes/models/show_models.dart';
import 'package:my_shoes/widgets/app_clipper.dart';
import 'dart:math' as math;


class DetailPage extends StatefulWidget {
  final ShoeModel shoeModel;
  DetailPage(this.shoeModel);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: widget.shoeModel.color,
      appBar: AppBar(
        backgroundColor: widget.shoeModel.color,
        elevation: 0,
        title: Text("CATEGORIES"),
        leading: IconButton(
          icon:Icon(Fluttericons.left_open),
       onPressed: (){
            Navigator.of(context).pop();
       },
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width ,
        child: Stack(
         children: <Widget>[
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * .7,
                width: MediaQuery.of(context).size.width ,
              child: ClipPath(
                clipper: AppClipper(cornerSize: 50,diagonalHeight: 130,roundedBottom: false),
                child: Container(
                    color:Colors.white,
                  padding: EdgeInsets.only(top: 95,left:8,right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[
                      Container(
                        width: 300,
                        padding: EdgeInsets.symmetric(horizontal: 8),

                        child: Text('${widget.shoeModel.name}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                        ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: Row(
                          children: <Widget>[

                        RatingBar.builder(
                        initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                            SizedBox(width: 16),
                            Text('134 Reviews',
                            style:TextStyle(
                              color:Colors.black87,
                            ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4,),
                      Text('Details',
                      style:TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,

                      ),
                      ),
                      Text('${widget.shoeModel.desc}',
                        style:TextStyle(
                         color:Colors.black54,

                        ),
                      ),
                      SizedBox(height: 4),
                      Text('COLOUR OPTIONS',
                        style:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,

                        ),
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: <Widget>[
                          Container(
                            width:20,
                            height: 20,
                            margin: EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                              color:AppColors.blueColor,
                              borderRadius: BorderRadius.all(Radius.circular(58),),
                            ),
                          ),
                          Container(
                            width:20,
                            height: 20,
                            margin: EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                              color:AppColors.greenColor,
                              borderRadius: BorderRadius.all(Radius.circular(58),),
                            ),
                          ),
                          Container(
                            width:20,
                            height: 20,
                            margin: EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                              color:AppColors.yellowColor,
                              borderRadius: BorderRadius.all(Radius.circular(58),),
                            ),
                          ),
                          Container(
                            width:20,
                            height: 20,
                            margin: EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                              color:AppColors.redColor,
                              borderRadius: BorderRadius.all(Radius.circular(58),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
           Positioned(
             bottom: 0,

             child: _buildBottom(),
           ),
           Container(
             height: 200,
             width: 500,
             child: Padding(
               padding: const EdgeInsets.only(top: 0),

               child: Hero(
                 tag:"hero${widget.shoeModel.imgPath}",
                 child: Transform.rotate(
                   angle:-math.pi/7,
                   child: Image(
                     width:MediaQuery.of(context).size.width * 9,
                     image: AssetImage('assets/images/${widget.shoeModel.imgPath}',),
                   ),
                 ),
               ),
             ),
           ),
         ],
        ),
      ),


    );
  }

 Widget _buildBottom() {

    return Container(
          padding: EdgeInsets.symmetric(vertical: 8,horizontal:8),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.only(
              topLeft:  Radius.circular(30),
              topRight:  Radius.circular(30),

            ),
            boxShadow:[
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 1,
                blurRadius: 10,
              ),
            ],
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("PRICE",
                    style:TextStyle(
                      color: Colors.black26,
                    ),),
                  Text('\$${widget.shoeModel.price.toInt()}',
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),

              Container(

                padding: EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 50,
                ),
                decoration: BoxDecoration(
                  color:AppColors.greenColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Text("ADD CART",
                  style:TextStyle(
                    color:Colors.white,
                  ),
                ),
              ),
            ],
          ),


    );
 }
}
