import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login.png",
          fit: BoxFit.cover,
          ),
          const SizedBox(height: 30),
          const Text("WELCOME", style: TextStyle(
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
            ),

                TextFormField(
                obscureText : true,
                decoration : const InputDecoration(
                hintText : "Enter Password",
                label : Text("Password"),
              )
            ),

              const SizedBox(height:20),
              
              ElevatedButton(
                onPressed: (){
                  // ignore: avoid_print
                  print("Hey Yash");
                 },
                style : TextButton.styleFrom(primary: Colors.white) ,
                child: const Text("Login"),
                 ),

              ],
              

              
            
            ),
          )
        ],
        
      ),
      
    );
  }
}