import 'package:flutter/material.dart';
import 'build_expansiontile.dart';
import 'custom_card.dart';
import 'info_card.dart';
//
class TaskBody extends StatelessWidget {
  const TaskBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics:const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          SizedBox(height: size.height*.02,),
          const CustomCard(),
          SizedBox(height: size.height*.03,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              InfoCard(title: 'Durasi',subTitle: '1 Bulan',iconData: Icons.date_range,),
              InfoCard(title: 'Frekuensi',subTitle: '2x Sehari',iconData: Icons.access_time_outlined,),
            ],
          ),
          SizedBox(height: size.height*.025,),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text('Ceklis Selanjuntnya',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: size.width*.05,),),
          ),
          const BuildExpansionTile(title: 'Hari ini Pukul 10:00',subTitle: '1Kapsul Antihistman',but1: 'ingatkan Nanti',but2: 'Selesal',),
          const BuildExpansionTile(title: 'Hari ini Pukul 16:00',subTitle: '1Kapsul Antihistman',but1: 'ingatkan Nanti',but2: 'Selesal',),
        ],
      ),
    );
  }
}
//ss
