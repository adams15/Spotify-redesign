import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key, required this.child, required this.label1, required this.label2});
  final Widget child;
  final String label1;
  final String label2;

  @override
  Widget build(BuildContext context) {
    return Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child: ClipRRect(borderRadius: BorderRadius.circular(16),
                        child: child, 
                                  ),),
                                  const SizedBox(height: 8,),
                         Text(label1, style: const TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 16),),
                         const SizedBox(height: 6,),
                         Text(label2),
                    ],
                  );
  }
}