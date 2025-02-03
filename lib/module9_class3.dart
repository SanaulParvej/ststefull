import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class mnoduleninilast extends StatelessWidget {
  const mnoduleninilast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module 9"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Image.network(
                height: 200,
                  width: 400,
                  fit: BoxFit.cover,
        
                  'https://cdn.prod.website-files.com/62a9e41d28a7ab25849bce9c/62fcab0db38819bef2500673_Is%20image%20processing%20part%20of%20machine%20learning-p-1080.jpg'),
            ),
          Image.asset('asset/download.png'),
            Container(
              height: 30.h,
              width: 40.w,
              color: Colors.redAccent,
            ),
            Text("Hi Parvej",style: TextStyle(fontSize: 30.sp),)
          ],
        ),
      ),
    );
  }
}
