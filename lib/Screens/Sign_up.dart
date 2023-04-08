import 'package:fetch_io/Home_Screens/HomePage.dart';
import 'package:fetch_io/Screens/Login.dart';
import 'package:fetch_io/Screens/ProductDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                      const Text('Karibu  !',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),),
                      const SizedBox(height: 10,),
                      const Text(' On step away from Home ...',style:TextStyle(fontSize: 20),),
                      const Text('Its a blessing to have you !',style: TextStyle(fontSize: 20),),
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
                                hintText: 'Email Address '
                              //todo to add on click on the eye so one can view the password

                            ),
                            ),
                          ),
                        ),

                      ),
                      const SizedBox(height: 20,),

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
                                hintText: 'Password ',suffixIcon: Icon(CupertinoIcons.eye_slash,color:Color(0xff1C1B1B))
                              //todo to add on click on the eye so one can view the password

                            ),
                            ),
                          ),
                        ),

                      ),
                      const SizedBox(height: 20,),
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
                                hintText: ' Confirm Password ',suffixIcon: Icon(CupertinoIcons.eye_slash,color:Color(0xff1C1B1B),)
                              //todo to add on click on the eye so one can view the password

                            ),
                            ),
                          ),
                        ),

                      ),

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
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),),
                            child: Text(
                                "Sign Up",
                                style: TextStyle(fontSize: 14)
                            )
                        ),
                      ),
                      const SizedBox(height: 25,),
                      const Text('or Continue with'),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,20, 0,20),
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

                              child: const Image(image: AssetImage('assets/gg.png'),),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              height: MediaQuery.of(context).size.height*0.1,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  border:Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: const Image(image: AssetImage('assets/fb.png'),),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('you are family?'),
                          GestureDetector(
                            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()),),
                            child: const Text(' Login here',
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
