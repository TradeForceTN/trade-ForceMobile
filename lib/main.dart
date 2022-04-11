import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tradeforcetn/icons.dart';
import 'package:tradeforcetn/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        bottomAppBarColor: AppColors.signupButtonColor
      ),
      home: const HomePage  (),
    );
  }
}

class   SignUp extends StatelessWidget {
  const SignUp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body:Container(

        margin: EdgeInsets.only(left: 80.0 , right:80.0  ),
        child : Column (

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment : CrossAxisAlignment.center,

        children:   <Widget>  [

          SizedBox(height: 20),
          Image.asset('images/logo.png'),
          SizedBox(height: 20),
          Text("Create a Free account" , style: TextStyle(color: Colors.white),),
          SizedBox(height: 40 ),

          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.backgroundColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(80.0)),
              ))

            ),
              onPressed: () { },
            child: Ink(
              decoration: const BoxDecoration(
                color: AppColors.signupButtonColor,
                borderRadius: BorderRadius.all(Radius.circular(80.0)),
              ),
              child: Container(
                constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                alignment: Alignment.center,
                child: const Text(
                  'Sign up',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.backgroundColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(80.0)),
              )
            ),
            ),


            onPressed: () { },
            child: Ink(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[AppColors.signinButtonFirstColor, AppColors.signinButtonSecondColor],
                ),
                borderRadius: BorderRadius.all(Radius.circular(80.0)),
              ),
              child: Container(
                constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                alignment: Alignment.center,
                child: const Text(
                  'Sign in',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),


        ],
     ),
    ),

      );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0 ;
  void _onItemTap (int index ){
    setState(() {
      _selectedIndex = index ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Container(
         margin: EdgeInsets.only(left: 20.0 , right: 20.0 ,top: 20.0,bottom:  400.0),
        color: AppColors.signupButtonColor,




      child:Column(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Home" , style : TextStyle( color: Colors.white,fontSize: 34,fontWeight: FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(AppColors.ProviderButtonColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ))

                  ),
                  onPressed: () { },

                    child: Container(
                      constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: const Text(
                        'Gainers',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(AppColors.ProviderButtonColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ))

                  ),
                  onPressed: () { },

                    child: Container(
                      constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: const Text(
                        'Losers',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(AppColors.ProviderButtonColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ))

                  ),
                  onPressed: () { },


                    child: Container(
                      constraints: const BoxConstraints(minWidth: 88.0, minHeight: 36.0), // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: const Text(
                        'Index',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

              ],

            )
          ],
        ),
      ),

        bottomNavigationBar: Container(

          clipBehavior: Clip.hardEdge,
          margin: EdgeInsets.only(left: 16, right: 16 , bottom: 20 ),
         decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0)),
          child: BottomNavigationBar (
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.white,

             backgroundColor: AppColors.iconButtonColor,
             type: BottomNavigationBarType.fixed,


             items:  const  [
              BottomNavigationBarItem(


              icon: Icon( Icons.home),
              label :  'home'
          ),
          BottomNavigationBarItem(
              icon: Icon( MyFlutterApp.graduation_cap),
              label: 'learn'
          ),
          BottomNavigationBarItem(
              icon: Icon (MyFlutterApp.exchange),
              label: 'spot'
          ),
          BottomNavigationBarItem(
              icon: Icon( Icons.notifications_none),
              label: 'notifications'
          ),
          BottomNavigationBarItem(
              icon: Icon( Icons.settings),
              label :  'settings'
          ),


      ],
            currentIndex : _selectedIndex ,
            onTap: _onItemTap ,
          ),

    ),
    )  ;
  }

}


