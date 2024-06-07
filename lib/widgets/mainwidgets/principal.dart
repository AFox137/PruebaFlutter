import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pruebas/widgets/mainwidgets/registro.dart';


class Principal extends StatefulWidget {
  const Principal();

  @override
  State<Principal> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Principal> {
  
  final userController = TextEditingController();
  final passController = TextEditingController();
  bool visibility=true;
  String userTxt = "";
  String passTxt = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.lightBlue,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            child: Image.network(
              'https://static.vecteezy.com/system/resources/thumbnails/000/546/910/small/fox_007.jpg'),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
            child: TextField(
              controller: userController,
              decoration: InputDecoration(
                hintText: "Usuario",
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
            child: TextField(
              controller: passController,
              obscureText: visibility,
              decoration: InputDecoration(
                hintText: "Contraseña",
                suffixIcon: IconButton(
                  icon: Icon(
                    visibility ? Icons.visibility : Icons.visibility_off
                  ), 
                 onPressed: () {
                  visibility = !visibility;
                  setState(() {});
                 },),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15,horizontal: 120),              
              child: ElevatedButton(
                onPressed: () {
                  userTxt = userController.text;
                  passTxt = passController.text;
                  //validaciones van aqui!!

                  //-----------------------
                  

                }, child: Text("LOGIN"),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
              alignment: Alignment.center,
              child: Stack(
                children:[Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Si no tienes cuenta aun "),
                    TextButton(
                      child: Text("registrarse"),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute<Null>(
                          builder: (BuildContext context){
                            return new Registro();
                          }
                          ));

                      },
                    ),
                  ],
                ),]
              ) 
            )
          ],
        ), 
      );
  }
}
