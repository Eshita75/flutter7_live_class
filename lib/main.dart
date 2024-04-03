//Cupertino widget|| ThemeData

import 'package:flutter/cupertino.dart';

main(){
  runApp(IosStyleApp());
}

class IosStyleApp extends StatelessWidget{
  const IosStyleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(home: Home(),);
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Home'),
        trailing: CupertinoButton.filled(child: Text('hi'), onPressed: (){}),
      ),
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoActivityIndicator(
                radius: 30,
              ),
              CupertinoSwitch(value: false, onChanged: (value){})
            ],
          ),
        )
    );
  }
}