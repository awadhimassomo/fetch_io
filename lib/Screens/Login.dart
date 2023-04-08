
import 'package:fetch_io/Screens/Sign_up.dart';
import 'package:fetch_io/authnitification/GogogleSignInProvider.dart';
import 'package:provider/provider.dart';
import 'MainPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static String routeName="/Login";
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
        body: SingleChildScrollView(
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
                       const  Text('Karibu Tena !',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),),
                       const SizedBox(height: 10,),
                       const Text(' On step away from Home ...',style:TextStyle(fontSize: 20),),
                       const Text('your were missed !',style: TextStyle(fontSize: 20),),
                  const SizedBox(height: 40,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)

                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left:12),
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
                  const SizedBox(height: 20),



                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.white)
                            ),

                            child: const Padding(
                              padding: EdgeInsets.only(left: 12),
                              child: TextField(
                                obscureText: true,
                                maxLines: 1,decoration:InputDecoration(
                                 border: InputBorder.none,
                                  hintText: 'Password ',suffixIcon: Icon(CupertinoIcons.eye_slash,color: Colors.redAccent,)
                                //todo to add on click on the eye so one can view the password

                              ),
                              ),
                            ),
                          ),

                        ),
                  const SizedBox(height: 20,),
          const Text('Recover Password'),

           const SizedBox(height: 25,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.9,
                    height:MediaQuery.of(context).size.width*0.13,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                                side: const BorderSide(color: Colors.redAccent)
                            ),
                          ),
                        ),
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MainPage()),),
                        child: const Text(
                            "Sign In",
                            style: TextStyle(fontSize: 14)
                        )
                    ),
                  ),
               const SizedBox(height: 25,),
                      const Text('or Continue with'),

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

                            child: GestureDetector(
                                onTap:() {
                                  final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
                                  provider.googleLogin();


                                },
                                    //  Navigator.push(context, MaterialPageRoute(builder: (context) => const MainPage()),),,
                                //todo change navigation to authentication by google
                                child: const Image(image: AssetImage('assets/gg.png'),)),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: MediaQuery.of(context).size.height*0.1,
                            //todo navigation to facebook authentication
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                border:Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)
                          ),
                            child: GestureDetector(
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MainPage()),),
                                child: const Image(image: AssetImage('assets/fb.png'),)),
                          ),
                        ],
                      ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('not a member !'),
                      GestureDetector(
                        onTap:  () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()),),
                        child: const Text(' Register Now',
                          style: TextStyle(color: Colors.redAccent),),
                      )
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
