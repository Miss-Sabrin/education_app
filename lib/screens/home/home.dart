import 'package:education_app/screens/course/course.dart';
import 'package:education_app/widgets/home_apbar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
   Home({super.key});

  List catNames=[
    "catecory",
    "classes",
    "free Courses",
    "BookStore",
    "Live Courses",
    "LeaderBoard",
  ];
 
    

  
  List<Color>catColors=[
    Color(0xFFFFCF2F), 
    Color(0xFF6FE08D), 
    Color(0xFF61BDFD), 
    Color(0xFFFC7F7F), 
    Color(0xFFC884F8), 
    Color(0xFF78E667), 

  ];

  List<Icon> catIcons=[
    Icon(Icons.category,color: Colors.white,size: 30,),
    Icon(Icons.video_library,color: Colors.white,size: 30,),
    Icon(Icons.assessment,color: Colors.white,size: 30,),
    Icon(Icons.store,color: Colors.white,size: 30,),
    Icon(Icons.play_circle_fill,color: Colors.white,size: 30,),
    Icon(Icons.emoji_events,color: Colors.white,size: 30,),
  ];

List<Map<String,dynamic>> imageList=[
  {
   "name":"Flutter",
   "image":"images/Flutter.png"

  },
   {
   "name":"React",
   "image":"images/React.png"

  },
   {
   "name":"Pythone",
   "image":"images/Pythone.png"

  },
   {
   "name":"C#",
   "image":"images/C#.png"

  },
  
  
  
  
  // "React",
  // "Pythone",
  // "C#"
];



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              HomeApbar(),
              SizedBox(height: 0,),
              //todo type catecories
            
            
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,right: 15),
              child: Column(
          children: [
            GridView.builder(
                      shrinkWrap: true,
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 1.1
                              ),
                              itemCount:catNames.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: catColors[index],
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: catIcons[index],
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Text(catNames[index],style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black.withOpacity(0.7)
                                    ),),
             
                                  ],
                                );
                              },
                            ),
          ],
              ),
            ),
                      
            
                               Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Courses',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23
                                      ),),
                                       Text('All',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18
                                      ),)
                                    ],
                                  ) ,
                                ),
                                SizedBox(height: 10,),
                                GridView.builder(
                                       itemCount: imageList.length,
          
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: (MediaQuery.of(context).size.height - 50 - 25) /
                                    (4 * 240),
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10,
          
          
                                    
                                  ),
                                  itemBuilder: ( context,  index) {
                                    return InkWell(
                                      onTap: () {
                                        Navigator.push(context, 
                                        MaterialPageRoute(builder: 
                                        (context)=>CourseScreen(
                                          imageList[index]['name']

                                          )));
                                        
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF5F3FF),
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Column(
                                          children: [
                                            Padding(padding: EdgeInsets.all(10),
                                            child: Image.asset(
                                             // 'images/${imageList[index]}.png',
                                              imageList[index]['image']!,
                                            height: 100,
                                            width: 290,
                                            ),),
                                            SizedBox(height: 10,),
                                            Text(imageList[index]['name']!,style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black.withOpacity(0.6)
                                            ),),
                                            SizedBox(height: 10,),
                                            Text(
                                              '33 videos',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15,
                                                color: Colors.black.withOpacity(0.5)
                                              ),
                                            )
          
                                          ],
                                        ),
                                      ),
                                    ) ;
                                  },
                                ),
                              
              
            
              
              
          
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        iconSize: 32,
        selectedItemColor:  Color.fromARGB(255, 112, 65, 241),
        unselectedItemColor: Colors.grey,
 
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.assignment),label: 'Assiingment'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'person'),

        ]
        
        ),
    );
  }
}