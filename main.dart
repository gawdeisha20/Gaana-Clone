import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

void _submit(){
  
}
class FirstRoute extends StatelessWidget {
  
  
  const FirstRoute ({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold(
body: Container(
  constraints: BoxConstraints.expand(),
decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/background.jpg"),
                        fit: BoxFit.cover)),
child: Column(

children: <Widget>[
   //Image.asset('assets/background.jpg'),
Container(
 
  child: Text(
'gaana',
textAlign: TextAlign.center,
style: TextStyle(
color: Colors.red,
fontSize: 80,
fontWeight: FontWeight.bold,
fontFamily: 'Martel-Black'),
)
),
Container(
  margin: EdgeInsets.all(25),  
              child: FlatButton(  
                child: Text('Login Page', style: TextStyle(fontSize: 20.0),),  
                color: Color.fromARGB(255, 22, 27, 34),  
                textColor: Colors.white,  
                onPressed: () {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
                },
)



),
Container(
  margin: EdgeInsets.all(25),  
              child: FlatButton(  
                child: Text('Sign up', style: TextStyle(fontSize: 20.0),),  
                color: Color.fromARGB(255, 17, 18, 20),  
                textColor: Colors.white,  
                onPressed: () {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ThirdRoute()),
            );
                },
)



)])),

),

);


}
          
      
    
  }


class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
// ignore: avoid_unnecessary_containers
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 30.0),
                    child: const Text('gaana',
                        style: TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.red)),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(16.0, 200.0, 0.0, 0.0),
                    child: const Text('Gaana would love to know you more',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            Container(
                padding:
                    const EdgeInsets.only(top: 35.0, left: 30.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    const TextField(
                      decoration: InputDecoration(
                          labelText: 'phone number',
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                    ),
                    const SizedBox(height: 20.0),
                    const SizedBox(height: 5.0),
                    const SizedBox(height: 40.0),
// ignore: sized_box_for_whitespace
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.greenAccent,
                        color: Colors.red,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: const Center(
                            child: Text(
                              'LOGIN with OTP',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                  ],
                )),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'Or login with',
                  style: TextStyle(fontFamily: 'Montserrat'),
                ),
                SizedBox(width: 5.0)
              ],
            ),
            const SizedBox(height: 5.0),
// ignore: sized_box_for_whitespace
            Container(
              height: 40.0,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Colors.redAccent,
                color: Colors.white,
                elevation: 7.0,
                child: GestureDetector(
                  onTap: () {},
                  child: const Center(
                    child: Text(
                      'LOGIN with Facebook',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5.0),
// ignore: sized_box_for_whitespace
            Container(
              height: 40.0,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Colors.redAccent,
                color: Colors.white,
                elevation: 7.0,
                child: GestureDetector(
                  onTap: () {},
                  child: const Center(
                    child: Text(
                      'LOGIN with Email',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5.0),
// ignore: sized_box_for_whitespace
            Container(
              height: 40.0,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Colors.redAccent,
                color: Colors.white,
                elevation: 7.0,
                child: GestureDetector(
                  onTap: () {},
                  child: const Center(
                    child: Text(
                      'LOGIN with Google',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}




class ThirdRoute extends StatelessWidget {
const ThirdRoute({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
return Scaffold(
resizeToAvoidBottomInset: false,
backgroundColor: Colors.white,
appBar: AppBar(
elevation: 0,

brightness: Brightness.light,
backgroundColor: Colors.white,
leading: IconButton(
onPressed: () {
Navigator.pop(context);
},
icon: Icon(
Icons.arrow_back_ios,
size: 20,
color: Colors.black,
)),
),
body: SafeArea(
child: SingleChildScrollView(
child: Container(
height: MediaQuery.of(context).size.height,
width: double.infinity,
child: Column(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Column(
children: [
Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Text(
"Sign up",
style: TextStyle(
fontSize: 30,
fontWeight: FontWeight.bold,
),
),
SizedBox(
height: 20,
),
Text(
"Create an Account,Its free",
style: TextStyle(
fontSize: 15,
color: Colors.grey[700],

),
),
SizedBox(
height: 30,
)
],
),
Padding(
padding: EdgeInsets.symmetric(horizontal: 40),
child: Column(
children: [
makeInput(label: "Email"),
makeInput(label: "Password", obsureText: true),
makeInput(label: "Confirm Pasword", obsureText:

true)

],
),
),
Padding(
padding: EdgeInsets.symmetric(horizontal: 40),
child: Container(
padding: EdgeInsets.only(top: 3, left: 3),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(40),
border: Border(
bottom: BorderSide(color: Colors.black),
top: BorderSide(color: Colors.black),
right: BorderSide(color: Colors.black),
left: BorderSide(color: Colors.black))),

child: MaterialButton(
minWidth: double.infinity,
height: 60,
onPressed: () {},
color: Colors.redAccent,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(40)),
child: Text(
"Sign Up",
style: TextStyle(
fontWeight: FontWeight.w600,

fontSize: 16,
),
),
),
),
),
SizedBox(
height: 20,
),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text("Already have an account? "),
Text(
"Login",
style: TextStyle(
fontWeight: FontWeight.w600, fontSize: 18),
),
],
)
],
),
],
),
),
),
),
);
}
}
Widget makeInput({label, obsureText = false}) {
return Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
label,
style: TextStyle(
fontSize: 15, fontWeight: FontWeight.w400, color:

Colors.black87),

),
SizedBox(
height: 5,
),
TextField(
obscureText: obsureText,
decoration: InputDecoration(
contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal:

10),
),
),
SizedBox(
height: 30,
)
],
);
}