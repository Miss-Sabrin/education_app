import 'package:flutter/material.dart';

class HomeApbar extends StatelessWidget {
  const HomeApbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 220,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 112, 65, 241),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)
            )


          ),


       child: Padding(
         padding: const EdgeInsets.only(top: 30),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.dashboard,color: Colors.white,size: 30,),
                            Icon(Icons.notifications,color: Colors.white,size: 30,)
               
               
                ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 20),
               child: Text('Hi,   Programmer',style: TextStyle(
                color: Colors.white,fontSize: 20,
                fontWeight: FontWeight.bold
               ),),
             ),
             SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                 child: Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      labelText: 'search here',
                      border: InputBorder.none,
                      icon: Icon(Icons.search)

                      
                      
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
    );
  }
}