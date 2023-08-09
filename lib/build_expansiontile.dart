import 'package:flutter/material.dart';
//
class BuildExpansionTile extends StatelessWidget {
  const BuildExpansionTile(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.but1,
      required this.but2})
      : super(key: key);
  final String title, subTitle, but1, but2;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 100, offset: Offset(-10, 10)),
          ],
          color: Colors.white),
      margin: EdgeInsets.all(size.width * .06),
      child: ExpansionTile(
        title: ExpansionTileTitle(title: title,subTitle: subTitle,),
        children: [
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: size.width * .38,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: Colors.white54,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 20)),
                  onPressed: () {},
                  child: Text(
                    but1,
                    style: TextStyle(
                        fontSize: size.width * .042,
                        color: const Color(0xff003366)),
                  ),
                ),
              ),
              SizedBox(
                width: size.width * .01,
              ),
              SizedBox(
                width: size.width * .38,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: const Color(0xff003366),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                  ),
                  onPressed: () {},
                  child: Text(
                    but2,
                    style: TextStyle(fontSize: size.width * .042),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class ExpansionTileTitle extends StatelessWidget {
  const ExpansionTileTitle({Key? key, required this.title, required this.subTitle}) : super(key: key);
  final String title, subTitle;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          color: const Color(0xffE1C970),
          width: 5,
          height: size.width * .15,
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: size.width * .045,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              subTitle,
              style: TextStyle(
                fontSize: size.width * .035,
                color: Colors.black45,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

