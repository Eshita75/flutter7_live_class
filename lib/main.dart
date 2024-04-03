// //Cupertino widget|| ThemeData
//
// import 'package:flutter/cupertino.dart';
//
// main(){
//   runApp(IosStyleApp());
// }
//
// class IosStyleApp extends StatelessWidget{
//   const IosStyleApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoApp(home: Home(),);
//   }
// }
//
// class Home extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       navigationBar: CupertinoNavigationBar(
//         middle: Text('Home'),
//         trailing: CupertinoButton.filled(child: Text('hi'), onPressed: (){}),
//       ),
//         child:Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CupertinoActivityIndicator(
//                 radius: 30,
//               ),
//               CupertinoSwitch(value: false, onChanged: (value){})
//             ],
//           ),
//         )
//     );
//   }
// }


import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          // style: ElevatedButton.styleFrom(
          //   backgroundColor: Colors.redAccent,
          //   foregroundColor: Colors.black,
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(20)
          //   )
          //)
            style: ButtonStyles.elevatedButton
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyles.textButton
        )
      ),
    );
  }
}

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: Text('Tap to Edit')),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple
              ),
                onPressed: (){}, child: Text('Tap to Edit')),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.green
              ),
                onPressed: (){}, child: Text('Tap to Edit')),
            TextField()
          ],
        ),
      ),
    );
  }
}

class ButtonStyles{
  static ButtonStyle elevatedButton = ElevatedButton.styleFrom(
      backgroundColor: Colors.redAccent,
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      )
  );

  static ButtonStyle textButton = TextButton.styleFrom(
    textStyle: TextStyle(
      fontSize: 24
    ),
    padding:  EdgeInsets.symmetric(vertical: 16, horizontal: 20)
  );
}