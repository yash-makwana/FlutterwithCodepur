import 'package:flutter/material.dart';
import 'package:fultter_catelog/utilities/route.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool current = false;
  @override
  
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
              child: Column(
          children: [
            Image.asset("assets/images/login.png",
            fit: BoxFit.cover,
            ),
            const SizedBox(height: 30),
            Text("WELCOME $name", style: const TextStyle(
              color: Colors.blueAccent,
              fontSize: 25,
              fontWeight: FontWeight.w500,
              ),
              ),
            const SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15.0),
              child: Column(
                children: [
                  TextFormField(
                  decoration : const InputDecoration(
                  hintText : "Enter User Name",
                  label : Text("UserName"),
                ),
                onChanged:(value){
                    name = value;
                    setState(() {
                      
                    });
                },
              ),

                  TextFormField(
                  obscureText : true,
                  decoration : const InputDecoration(
                  hintText : "Enter Password",
                  label : Text("Password"),
                )
              ),

                const SizedBox(height:25),
                InkWell(
                  onTap : () async {
                    setState(() {
                      current = true;
                      
                    });
                    await Future.delayed(const Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoute.homePage);
                  },
                    child: AnimatedContainer(
                    height: 50,
                    width: current?50:100,
                    
                    alignment : Alignment.center,
                    child: current?const Icon(Icons.done,color: Colors.white):
                      const Text("Login",style: TextStyle(color: Colors.white,fontSize: 18,
                  ),
                  ),
                  decoration : BoxDecoration(
                    color: Colors.blueAccent,
                    //shape : current?BoxShape.circle:BoxShape.rectangle,
                    borderRadius : BorderRadius.circular(current?50:8),

                  ), 
                  duration: const Duration(seconds : 1),
                  ),
                )
                // ElevatedButton(
                //   onPressed: (){
                //     
                    
                //    },
                //   style : TextButton.styleFrom(minimumSize: const Size(100, 35)) ,
                //   child: const Text("Login"),
                //    ),

                ],
                

                
              
              ),
            )
          ],
          
        ),
      ),
      
    );
  }
}