import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  bool hide= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            FractionallySizedBox(
              widthFactor: 2,
              heightFactor: 0.7,
              child:  Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top:300),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(40),
                      topLeft:Radius.circular(0))),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal : 20,vertical: 20),
              margin: EdgeInsets.only(top: 300,left: 50,right: 50),
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        spreadRadius: 0.1,
                        blurRadius: 5
                    )
                  ]
              )
              ,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    obscureText: hide,
                    decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: IconButton(
                          onPressed:(){
                            setState(() {
                              hide =!hide;
                            });
                          }, icon: hide?Icon(Icons.visibility_off):Icon(Icons.visibility) ,
                        ),
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: Text("Forget ?"),),
                  ),
                  ElevatedButton(style: TextButton.styleFrom(
                      backgroundColor: Colors.indigo[700],
                      padding: EdgeInsets.symmetric(horizontal:80)
                  ), onPressed: () {  } ,child: Text("Login")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account"),
                      TextButton(onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) =>RegisterScreen()));
                      }, child: Text("Register?"))
                    ],)
                ],
              ),),
            Positioned(
                top:60,left:15,
                child: Column(children: [

                  Text("Welcome Back",style:TextStyle(color: Colors.indigo[900],fontWeight: FontWeight.bold,fontSize: 30),),
                  Text(
                    "Login access to your account",
                    style: TextStyle(
                        color: Colors.indigo[900],
                        fontWeight: FontWeight.w300,
                        fontSize: 17),
                  )

                ],))

          ],
        )
    );
  }
}

class RegisterScreen extends StatefulWidget {
  @override
  State <RegisterScreen> createState() => _RegisterScreenState();
}
class _RegisterScreenState extends State<RegisterScreen> {
  bool hide= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            FractionallySizedBox(
              widthFactor: 2,
              heightFactor: 0.7,
              child:  Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top:300),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(40),
                      topLeft:Radius.circular(0))),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal : 20,vertical: 20),
              margin: EdgeInsets.only(top: 300,left: 50,right: 50),
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        spreadRadius: 0.1,
                        blurRadius: 5
                    )
                  ]
              )
              ,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    obscureText: hide,
                    decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: IconButton(
                          onPressed:(){
                            setState(() {
                              hide =!hide;
                            });
                          }, icon: hide?Icon(Icons.visibility_off):Icon(Icons.visibility) ,
                        ),
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    obscureText: hide,
                    decoration: InputDecoration(
                        hintText: " Confirm Password",
                        suffixIcon: IconButton(
                          onPressed:(){
                            setState(() {
                              hide =!hide;
                            });
                          }, icon: hide?Icon(Icons.visibility_off):Icon(Icons.visibility) ,
                        ),
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                    ),
                  ),
                  ElevatedButton(style: TextButton.styleFrom(
                      backgroundColor: Colors.indigo[700],
                      padding: EdgeInsets.symmetric(horizontal:80)
                  ), onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>RegisterScreen()));

                  } ,child: Text("Register")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account"),
                      TextButton(onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) =>LoginScreen()));

                      }, child: Text("Login?"))
                    ],)
                ],
              ),),
            Positioned(
                top:60,left:15,
                child: Column(children: [

                  Text(" Register",style:TextStyle(color: Colors.indigo[900],fontWeight: FontWeight.bold,fontSize: 30),),
                  Text(
                    "Create your account",
                    style: TextStyle(
                        color: Colors.indigo[900],
                        fontWeight: FontWeight.w300,
                        fontSize: 17),
                  )

                ],))

          ],
        )
    );
  }
}

