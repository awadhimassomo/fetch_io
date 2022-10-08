import 'package:fetch_io/Sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  get width => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
        child: Center(
            child:

            Padding(
              padding: const EdgeInsets.only(top:100),
              child: Column(
                children: [
                //  Padding(
                //    padding:EdgeInsets.only(top: 20),
                 //   child: Image(width:MediaQuery.of(context).size.width*0.8,image: AssetImage('assets/watu.png')),
               //   ),
                        Text('Karibu Tena !',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),),
                  SizedBox(height: 10,),
                        Text(' On step away from Home ...',style:TextStyle(fontSize: 20),),
                        Text('your were missed !',style: TextStyle(fontSize: 20),),
                  SizedBox(height: 40,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)

                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left:12),
                              child: TextField(
                                //text field decoration
                                maxLines: 1,decoration:InputDecoration(
                                 border:InputBorder.none,
                                  hintText: 'Enter UserName'
                              ),
                              ),
                            ),
                          ),
                        ),
                  SizedBox(height: 20),



                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.white)
                            ),

                            child: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: TextField(
                                obscureText: true,
                                maxLines: 1,decoration:InputDecoration(
                                 border: InputBorder.none,
                                  hintText: 'Password ',suffixIcon: Icon(CupertinoIcons.eye_slash,)
                                //todo to add on click on the eye so one can view the password

                              ),
                              ),
                            ),
                          ),

                        ),
                  SizedBox(height: 20,),
          Text('Recover Password'),

           SizedBox(height: 25,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height:MediaQuery.of(context).size.width*0.13,
                    child: ElevatedButton(
                        child: Text(
                            "Sign In",
                            style: TextStyle(fontSize: 14)
                        ),
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                                side: BorderSide(color: Colors.redAccent)
                            ),
                          ),
                        ),
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Sign_up()),)
                    ),
                  ),
               SizedBox(height: 25,),
                      Text('or Continue with'),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,40, 0,40),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.1,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                border:Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)
                            ),

                            child: Image(image: AssetImage('assets/gg.png'),),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: MediaQuery.of(context).size.height*0.1,
                            child: Image(image: AssetImage('assets/fb.png'),),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                border:Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)
                          ),
                          ),
                        ],
                      ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('not a member !'),
                      Text(' Register Now',
                        style: TextStyle(color: Colors.blue[400]),)
                    ],
                  )

                      ],
                    ),
            ),
          ),
        )
            )
    );

  }
}
