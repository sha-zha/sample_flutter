import 'package:flutter/material.dart';
import '../widgets/myInput.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key: key); 

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
	@override
	Widget build(BuildContext context){
		return Scaffold(
			backgroundColor: Colors.grey[300],
			body: SafeArea(
				child: Center (
					child : Column(
						mainAxisAlignment : MainAxisAlignment.center,
					children: [
						SizedBox(height: 25),
						// text
						Text(
							'Bienvenue',
							style : TextStyle(
								fontWeight: FontWeight.bold,
								fontSize: 24,
								)
						),
						SizedBox(height: 10),
						Text(
							'Vous êtes sur l\'application CNL',
							style : TextStyle(fontSize: 20)
							),
						SizedBox(height: 25),

						//email input 
						MyInput(),						
						SizedBox(height: 10),
						//password input 
						Padding(
      padding : const EdgeInsets.symmetric(horizontal:25.0),
      child: Container(
                decoration : BoxDecoration(
                  color : Colors.white,
                  border : Border.all(color : Colors.white),
                  borderRadius : BorderRadius.circular(12), 
                ),
                child: Padding(
                  padding : const EdgeInsets.only(left: 20),
                  child : TextField(
                  	obscureText : true,
                    decoration : InputDecoration(
                      border: InputBorder.none,
                      hintText : 'Password',
                    ),
                  ), 
                ),
              ),
    ),
						SizedBox(height: 10),
						//button login  
						Padding ( 
							padding : const EdgeInsets.symmetric(horizontal: 25.0),
							child : Container(
								padding : const EdgeInsets.all(15),
								decoration : BoxDecoration(
									color : Colors.deepPurple,
									borderRadius : BorderRadius.circular(10),
								),
								child: Center(
									child: Text(
										'Se connecter',
										style : TextStyle(
											color : Colors.white,
											fontSize : 20,
										),

									),

								),
							),
						),
					] ),
				),
			),
		);
	}
	
}

