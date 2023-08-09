import 'package:flutter/material.dart';
//
class InfoCard extends StatelessWidget {
  const InfoCard({Key? key, required this.title, required this.subTitle, required this.iconData}) : super(key: key);
  final String title,subTitle;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Card(
      elevation: 5,
      shadowColor: Colors.black26,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.only(top: 15,bottom: 5,left: 15,right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: TextStyle(color: Colors.black45,fontSize: size.width*.038),),
            Row(
              children: [
                Icon(iconData,size: size.width*.07,),
                SizedBox(height: size.height*.08,),
                Text('  $subTitle',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: size.width*.045)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
