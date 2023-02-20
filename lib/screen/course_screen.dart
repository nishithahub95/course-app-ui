import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  List catNames=[
    'Category',
    'Classes',
    'Free Course',
    'Bookstore',
    'Live Course',
    'LeaderBoard',
  ];
  List<Color> catColor=[
    Color(0xFFFFCF2F),
  Color(0xFF6FE08D),
  Color(0xFF61BDFD),
    Color(0xFFFC7F7F),
  Color(0xFFCB84FB),
  Color(0xFF78E667),
  ];
  List<Icon> catIcons=[
    Icon(Icons.category,color: Colors.white,size: 25,),
    Icon(Icons.video_library,color: Colors.white,size: 25,),
    Icon(Icons.assignment,color: Colors.white,size: 25,),
    Icon(Icons.store,color: Colors.white,size: 25,),
    Icon(Icons.play_circle_fill,color: Colors.white,size: 25,),
    Icon(Icons.emoji_events,color: Colors.white,size: 25,),
  ];
  List imglist=[
    'Flutter',
    'Java',
    'Python',
    'C#'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff000046),Color(0xff1CB5E0)]),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.dashboard,size: 25,color: Colors.white,),
                    Icon(Icons.notifications,size: 25,color: Colors.white,)
                  ],
                ),
                SizedBox(height: 20,),
                Padding(padding: EdgeInsets.only(left: 3,bottom: 10),
                child: Text('Hi, Programmer...',style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    letterSpacing: 1,
                    wordSpacing: 2,
                    color: Colors.white
                ),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search here...',
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(Icons.search)
                    ),
                  ),
                ),



              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: catNames.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.1
                  ),
                  itemBuilder: (context,index){
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: catColor[index],
                              shape: BoxShape.circle
                          ),
                          child: Center(
                            child: catIcons[index],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(catNames[index],style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                            color:Colors.black.withOpacity(0.7) ,
                        ),)
                      ],
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Courses',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),),
                    Text('See All',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        color: Colors.blue.shade300
                      ),)
                  ],
                ),
                SizedBox(height: 10,),
                GridView.builder(
                  itemCount: imglist.length,
                  shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: (MediaQuery.of(context).size.height-50-25)/(4*240),
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10
                    ), itemBuilder:(context,index){
                    return InkWell(
                      onTap: (){

                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFF5F3FF)
                         // color: Colors.blue
                        ),
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.all(20),
                            child: Image.asset('images/${imglist[index]}.png',
                              width: 100,
                              height: 100,),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(imglist[index],style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black.withOpacity(0.6)
                            ),),
                            SizedBox(height: 10,),
                            Text('55 Vedios',style: TextStyle(fontSize: 15,
                            fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.5)
                            ),)

                          ],
                        ),
                      ),

                    );
                })
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 32,
        selectedFontSize: 15,
        selectedItemColor: Colors.blue.shade400,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.assignment),label: 'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account')
        ],
      ),
    );
  }
}
