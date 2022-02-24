import 'package:flutter/material.dart';
import 'package:flutter_lesson_one/model/car.dart';
import 'package:flutter_lesson_one/screens/car_detail_screen.dart';
class CarItem extends StatelessWidget {
  String model;
  String color;
  int cost;
  int maxSpeed;
  String imageUrl;
  String description;

  CarItem({
    required this.model,required this.color,required this.cost,required this.maxSpeed,required this.imageUrl,required this.description
  });

  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;

    return  InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(CarDetailScreen.routeArgs,arguments: Car(model: model, color: color, cost: cost, maxSpeed: maxSpeed, imageUrl: imageUrl,description: description));
      },
      child: Padding(
        padding: const  EdgeInsets.only(top: 5,left: 8,right: 8,bottom: 5),
        child: Column(
          children:<Widget>[ Row(
            children: <Widget>
          [Container(
              height: MediaQuery.of(context).size.width*0.3,
              width: MediaQuery.of(context).size.width*0.45,
                child: Image.asset(imageUrl,fit: BoxFit.fill,),
              ),
            Container(
              padding: EdgeInsets.only(left: 10),
              width: MediaQuery.of(context).size.width*0.50,
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('model: ${model}', style: const TextStyle(fontWeight: FontWeight.w900,fontSize: 18),),
                  const SizedBox(height: 5,),
                  Text('cost: ${cost}\$',style: const TextStyle(fontWeight: FontWeight.w900,fontSize: 15,color: Colors.grey)),
                  const SizedBox(height: 5,),
                  Text('color:${color}',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15,color: Colors.grey)),
                  const SizedBox(height: 5,),
                  Text('max sped: ${maxSpeed} Km/h',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15,color: Colors.grey)),
                  const SizedBox(height: 5,),
                  Row(
                    children: <Widget>[
                      Icon(Icons.camera_alt_sharp,size: 15,color: Colors.grey,),
                      SizedBox(width: 5,),
                      Text('1')

                    ],
                  )
                ],
              ),
            ),

          ]
          ),
          Divider(color: Colors.grey,)
          ]
        ),
      ),
    );

  }
}
