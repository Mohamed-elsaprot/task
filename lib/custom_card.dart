import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Column(
      children: [
        Center(
          child: Container(
              padding:const EdgeInsets.all(22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.05),
                    offset: const Offset(-20,20),
                    blurRadius: 50
                  )
                ],
              ),
              child: Image.asset(
                'assets/imgs/photo.png',
                height: size.height*.085,
              ),
          ),
        ),
        SizedBox(height: size.height*.02,),
        Text('Antihistamin',style: TextStyle(fontSize: size.width*.07,fontWeight: FontWeight.bold),),
        SizedBox(height: size.height*.02,),
        Text('Obat untuk mengobtireaksi alergi',style: TextStyle(fontSize: size.width*.036,color: Colors.black45),),
      ],
    );
  }
}
