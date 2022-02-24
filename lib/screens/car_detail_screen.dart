import 'package:flutter/material.dart';

import '../model/car.dart';

class CarDetailScreen extends StatelessWidget {
  const CarDetailScreen({Key? key}) : super(key: key);
  static const routeArgs = '/detail';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Car;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.model),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.description)),
          SizedBox(width: 15,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Image.asset(
                args.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
           SizedBox(height: 5,),
            Container(
                padding: EdgeInsets.only(left: 15),
                child: Text(args.cost.toString()+' \$',style: TextStyle(color: Colors.grey,fontSize: 28),)),
           SizedBox(height: 5,),
           const SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('model:'+args.model,style: TextStyle(fontSize: 24),),
                  const SizedBox(height: 10,),
                  Text('maxSpeed:'+args.maxSpeed.toString(),style: TextStyle(fontSize: 24),),
                  const SizedBox(height: 10,),
                  Text('Color:'+args.color,style: TextStyle(fontSize: 24),),
                  const SizedBox(height: 10,),
                  Text('Cost:'+args.cost.toString(),style: TextStyle(fontSize: 24),),
                  const SizedBox(height: 10,),

                ],
              ),
            ),
            Divider(height: 2,color: Colors.grey,),
            SizedBox(height: 10,),
            Container(
                padding: EdgeInsets.only(left: 10),
                child: const Text('Description',style: TextStyle(color: Colors.blue,fontSize: 28,fontWeight: FontWeight.w700),)),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(args.description),
            )

          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(5),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width*0.4,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.call,
                  color: Colors.white,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.4,
              height: 40,

              child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),

                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
