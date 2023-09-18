import 'package:flutter/material.dart';

class Btns extends StatelessWidget {
 const Btns({super.key,  required this.image, required this.label});
  final Image image;
  final  String label;

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 48,
     width: 348,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(100),
       border: Border.all(color: Colors.white)
     ),
     child:  Padding(
       padding: const EdgeInsets.symmetric(horizontal: 25.0),
       child: Row(
         children: [
           image,
           const SizedBox(width: 45.0,),
            Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
         ],
       ),
     ),
    );
  }
}

// class LightBtn extends StatelessWidget {
//   const LightBtn({
//     super.key, this.label, this.icon});
//   final String? label;
//   final IconData? icon;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//      height: 72,
//      width: 348,
//      decoration: BoxDecoration(
//        border: Border.all(color: Colors.grey),
//        borderRadius: BorderRadius.circular(24)
//      ),
//      child:   Padding(
//        padding: const EdgeInsets.symmetric(horizontal: 10.0),
//        child: Row(
//          children: [
//           Icon(icon),
//             Text(label!, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.grey),),
//          ],
//        ),
//      ),
//     );
//   }
// }

// class ElevatedBtn extends StatelessWidget {
//   const ElevatedBtn({
//     super.key, required this.onPressed, required this.label});
//     final Function onPressed;
//     final String label;

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(onPressed: onPressed(),  
//     style: ElevatedButton.styleFrom(
//       backgroundColor: Colors.green,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
//       fixedSize: const Size(348,72),    
//     ) ,
//     child:  Text(label,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
//     );
//   }
// }