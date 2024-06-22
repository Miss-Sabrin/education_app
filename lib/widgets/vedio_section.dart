import 'package:flutter/material.dart';

class videoSection extends StatelessWidget {
   videoSection({super.key});
  List videoList=[
    "introduction to flutter",
    "instruction flutter on window",
    "setup emulator on window",
    'create our flutter App'
  ];

  @override
  Widget build(BuildContext context) { 
    return ListView.builder(
      shrinkWrap: true,
      itemCount: videoList.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index==1
              ?Color(0xFF674AEF)
              :Color(0xFF674AEF).withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.play_arrow_rounded,
            color: Colors.white,size: 30,),
          
          ),
          title: Text(videoList[index]!),
          subtitle: Text('20 min 50 sec'),
        );
      },
    );
  }
}