
import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/register.png'),fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 132,left: 30),
              child: Text("Welcome\n back",style: TextStyle(
                  color: Colors.white,
                  fontSize: 32
              ),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3,left: 30,right: 30),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey,
                          filled: true,
                          hint: Text("Name",style: TextStyle(
                              color: Colors.white,
                              fontSize: 24
                          ),),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)
                          )

                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey,
                          filled: true,
                          hint: Text("Email",style: TextStyle(
                              color: Colors.white,
                              fontSize: 24
                          ),),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)
                          )

                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey,
                          filled: true,
                          hint: Text("Password",style: TextStyle(
                              color: Colors.white,
                              fontSize: 24
                          ),),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)
                          )

                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text("SignIn",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 24
                        ),
                        ),
                        CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.blueGrey,
                            child: IconButton(onPressed: (){

                            }, icon: Icon(Icons.arrow_forward,color: Colors.white,),
                            )),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, 'register');
                        }, child:
                        Text("SignUp",style: TextStyle(
                          color: Colors.blue,fontSize: 24,
                          decoration: TextDecoration.underline,
                        ),
                        )
                        ),
                        TextButton(onPressed: (){}, child:
                        Text("Forgot Password",style: TextStyle(
                          color: Colors.blue,fontSize: 24,
                          decoration: TextDecoration.underline,
                        ),
                        )
                        )


                      ],
                    )
                  ],
                ),


              ),

            ),

          ],
        ),
      ),
    );
  }
}
