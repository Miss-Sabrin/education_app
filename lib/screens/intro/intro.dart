import 'package:education_app/screens/home/home.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 112, 65, 241),

      body: Material(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Stack(
                children: [
                 
                    Container(
                           height: MediaQuery.of(context).size.height /1.6,
                           width: MediaQuery.of(context).size.width,
                     
                  decoration:const BoxDecoration(
                   color: Colors.white,
                
                  ),
                 
                        ),
                         Container(
                           height: MediaQuery.of(context).size.height /1.6,
                           width: MediaQuery.of(context).size.width,
                     
                  decoration: BoxDecoration(
                   color: const Color.fromARGB(255, 112, 65, 241), 
                   borderRadius: BorderRadius.only(bottomRight: Radius.circular(70))                 
                            
                            
                  ),
                  child: Center(child: Image.asset('images/time.png'),),
                
                            
                            
                            
                        ),
                        
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child:  Container(
                           height: MediaQuery.of(context).size.height /2.666,
                           width: MediaQuery.of(context).size.width,
                     
                  decoration:const BoxDecoration(
                   color: const Color.fromARGB(255, 112, 65, 241), 
                
                  ),
                 
                        ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child:  Container(
                           height: MediaQuery.of(context).size.height /2.666,
                           width: MediaQuery.of(context).size.width,
                     
                  decoration:const BoxDecoration(
                   color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(70))                 

                
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20,),
                        Text('Learning is Everything',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                          ),),
                          SizedBox(height: 16,),

                          Text('Learning with pleasure Dear \n programmer wherever you are ',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black54
                          ),),
                          SizedBox(height: 50,),

                          Container(
                            width: 250,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 112, 65, 241),
                              borderRadius: BorderRadius.circular(10)

                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                              },
                              child: Text('Get Start',style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                              ),),


                            )
                              
                            
                          )


                      ],
                    ),
                 
                        ),
              )
                   
            ],
          ),
        )),
    );
  }
}