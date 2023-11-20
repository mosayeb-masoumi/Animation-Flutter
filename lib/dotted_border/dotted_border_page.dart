import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DottedBorderPage extends StatefulWidget {
  const DottedBorderPage({Key? key}) : super(key: key);

  @override
  State<DottedBorderPage> createState() => _DottedBorderPageState();
}

class _DottedBorderPageState extends State<DottedBorderPage> {
  @override
  Widget build(BuildContext context) {


    final image1 = buildImage("https://upload.wikimedia.org/wikipedia/commons/b/b5/Lion_d%27Afrique.jpg");

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: ma,
              children: [

                SizedBox(height: 10,),

                buildDashedBorder(
                  child: Container(
                    width: 150,height: 150,
                  )
                ),

                SizedBox(height: 10,),

                buildDashedBorder2(
                    child: Container(
                      width: 150,height: 150,
                    )
                ),


                SizedBox(height: 10,),

                buildDashedBorder3(
                    child: Container(
                      width: 150,height: 150,
                    )
                ),




                SizedBox(height: 10,),
                buildDashedBorder5(child: image1),

                SizedBox(height: 10,),
                buildCircleDashedBorder6(child: image1),

                SizedBox(height: 10,),
                buildDottedBorder7(child: image1),

                SizedBox(height: 10,),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDashedBorder({required Widget child}) {
    return DottedBorder(
      color: Colors.red,
        strokeWidth: 4,

        //to radius  rectangle
        // borderType: BorderType.RRect,
        // radius: Radius.circular(32),


      //to radius  circle
      borderType: BorderType.Circle,
        strokeCap: StrokeCap.round,


        dashPattern: [16,6 ,8,6],

        child: child,);
  }

  Widget buildDashedBorder2({required Widget child}) {
    return DottedBorder(
      color: Colors.blue,
      strokeWidth: 8,
      //to radius  circle
      borderType: BorderType.Circle,
      dashPattern: [1,12], // 8 is space between dots
      strokeCap: StrokeCap.round,

      child: child,);
  }

  Widget buildDashedBorder3({required Widget child}) {
    return DottedBorder(
      color: Colors.blue,
      strokeWidth: 8,
      borderType: BorderType.Circle,
      dashPattern: [1,0], // 8 is space between dots
      child: child,);
  }


  Widget buildDashedBorder5({required Widget child}) {
    return DottedBorder(
      dashPattern: [3,8], // 8 is space between dots
      strokeCap: StrokeCap.round,
      color: Colors.red,
      padding: EdgeInsets.all(10),
      strokeWidth:4,
      borderType: BorderType.RRect,
      radius: Radius.circular(32),
      child: ClipRRect(
           borderRadius: BorderRadius.circular(32),
          child: child),);
  }


  Widget buildCircleDashedBorder6({required Widget child}) {
    return DottedBorder(
       dashPattern: [16,6 ,8,6], // 8 is space between dots
      strokeCap: StrokeCap.round,
      color: Colors.red,
      strokeWidth:4,
      borderType: BorderType.Circle,
      child: ClipOval(child: child),);
  }


  Widget buildDottedBorder7({required Widget child}) {
    return DottedBorder(
      dashPattern: [10,0], // 8 is space between dots
      color: Colors.blue,
      strokeWidth:5,
      child: child,);
  }





  Widget buildImage(String url) {
    return Image.network(url,
      width: 180,height: 180,fit: BoxFit.cover,
    );
  }

}
