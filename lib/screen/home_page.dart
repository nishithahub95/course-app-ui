import 'package:courseappui/screen/course_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/1.6,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/1.6,
                  decoration: BoxDecoration(
                      //color: Color(0xff674aef),
                    gradient: LinearGradient(
                        colors: [Color(0xff000046),Color(0xff1CB5E0)]),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(70),)
                  ),
                  child: Center(
                    child: Image.asset('images/R.png',scale: 0.8,height: 300,),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.666,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff000046),Color(0xff1CB5E0)]),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.666,
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70)
                  )
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Text('Learning is Everything',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2
                    ),
                    ),
                    SizedBox(height: 15,),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text('Make your studies simple as possible.\nYou can learn from '
                        'any where.',
                    textAlign: TextAlign.center,
                    style: TextStyle(

                        fontSize: 17,
                        color: Colors.black.withOpacity(0.6)
                    ),
                    ),
                    ),
                    SizedBox(height: 40,),
                    Material(

                      child: InkWell(
                        onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>CourseScreen()));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 80),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [Color(0xff000046),Color(0xff1CB5E0)]),
                          ),
                          child: Text('Get Start',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold

                          ),
                          ),

                        ),
                      ),

                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
