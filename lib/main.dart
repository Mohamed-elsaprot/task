import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:training1/body.dart';
import 'package:training1/helper.dart';
//
import 'build_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: generateMaterialColor(const Color(0xffE1C970)),
        iconTheme: const IconThemeData(color: Color(0xffE1C970))
      ),
      home: const MyHomePage(),
    );
  }
}
// dart frog
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key,});


  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return BuildScaffold(
      scaffold: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: size.height*.08,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(Icons.arrow_back_sharp,size: 30,color: Colors.black54,),
          actions:const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(FontAwesomeIcons.pencil,color: Colors.grey,),
            )
          ],
        ),
        body: const TaskBody(),
      ),
    );
  }
}
