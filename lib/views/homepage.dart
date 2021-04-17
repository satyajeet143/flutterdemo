import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String tname;
  String name = "GOPAL";
  bool click=false;
final nameHolder = TextEditingController();
@override
void initState() { 
  super.initState();
  tname="";
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Satya App"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: Center(child: Image.asset("assets/images/a1.PNG")),
          ),
          Container(
            width: 300,
            height: 50,
            child: TextFormField(
              controller: nameHolder,
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'What do people call you?',
                labelText: 'Name *',
              ),
              onChanged: (String value){
                tname=value;
                setState(() {
 
                                });
              },
              // onSaved: (String value) {
              //   tname=value;
              //   setState(() {
                                  
              //                   });
              //   print(tname);
              // },
            ),
          ),
          Container(
            child: Text(
              tname,
              style: TextStyle(color: Colors.amber, fontSize: 25),
            ),
          ),
         click? MaterialButton(onPressed: (){
            setState(() {
                          tname="";
                          nameHolder.clear();
                          if(tname!=null){
 click=true;
                          }
                         
                        });
          },
          child: Text("Reset"),
          color: Colors.greenAccent,
          ):
          MaterialButton(onPressed: (){
            setState(() {
                          click=true;
                        });
          })
        ],
      ),
    );
  }
}
