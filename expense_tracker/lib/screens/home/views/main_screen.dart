import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
         child: Column(
               children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row( 
                  children: [
                         Stack(
                           alignment: Alignment.center,
                           children: [
                 Container(
                   width: 50,
                   height: 50,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.yellow.shade700,
                   ),  
                 ),
                 Icon(CupertinoIcons.person_fill, color: Colors.yellow.shade900, size: 30,)
                           ],
                         ),
                         SizedBox(width: 8,),
                           Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                  'WelCome',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.outline
                  )
                  ),
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface
                  )
                  )
                           ],),
                  ],),
                   IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.settings_solid))
              ],
            ),
            // card display
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                boxShadow: [BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 4,
                  offset: const Offset(5, 5)
                )],
                gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.secondary,
              Theme.of(context).colorScheme.tertiary,
            ],
            transform:const GradientRotation(pi / 4),
            )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(
                  "Total Balance",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
                  ),
                SizedBox(height: 12,),
                Text(
                  "4000.00 Birr",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Row(children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white30,
                        ),
                        child: Center(
                          child: Icon(
                          CupertinoIcons.arrow_down, 
                          color: Colors.greenAccent,
                          size: 12,),
                        ),
                      ),
                      SizedBox(width: 12,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Income",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                            ),
                          Text(
                            "2000.00 Birr",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                            )
                        ],
                      )
                    ],),
                    Row(children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white30,
                        ),
                        child: Center(
                          child: Icon(
                          CupertinoIcons.arrow_up, 
                          color: Colors.redAccent,
                          size: 12,),
                        ),
                      ),
                      SizedBox(width: 12,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Expense",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                            ),
                          Text(
                            "800.00 Birr",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                            )
                        ],
                      )
                    ],)
                  ],),
                )
              ],)
            )
               ]
             ),
       )); 
  }
}