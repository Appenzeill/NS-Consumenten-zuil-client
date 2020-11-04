import 'package:flutter/material.dart';
import '../main.dart';
import 'package:http/http.dart';
import 'dart:async';
import 'dart:convert';
//import './editdata.dart';

class Detail extends StatefulWidget {
  List list;
  int index;
   Detail({this.index,this.list});
  @override
  _DetailState createState() => new _DetailState();
}

class _DetailState extends State<Detail> {
  TextEditingController controllerComment = new TextEditingController();
  TextEditingController controllerApproval = new TextEditingController();

  String username = "Admin@gmail.com";
  String password = "admin";
  String basicAuth =
  'Basic ' + base64Encode(utf8.encode('"Admin@gmail.com":"admin"'));

  void updateReview(){
    //print(controllerComment.text);
    //print(controllerApproval.text);
    String user_id = "${widget.list[widget.index][0]}";
    //print(user_id);
    print("Succes");

    String username = "Admin@gmail.com";
    String password = "admin";
    String basicAuth =
    'Basic ' + base64Encode(utf8.encode('"Admin@gmail.com":"admin"'));

    var url = "http://127.0.0.1:5000/reviews/update";

    post(url,
        headers: <String, String>{
          'authorization': basicAuth,
        },
      body: {
        "comment": controllerComment.text,
        "approval": controllerApproval.text,
        "user_id": user_id 
    });
    controllerComment.clear();
    controllerApproval.clear();
  }
  //void updateReview(){

    //String username = "Admin@gmail.com";
    //String password = "admin";
    //String basicAuth =
    //'Basic ' + base64Encode(utf8.encode('$username:$password'));

     
    //var url = "http://127.0.0.1:5000/reviews/update";
    
    //post(url,body: {
      //    "comment": controllerComment.text,
      //    "approval": controllerApproval.text,
      //    "user_id": controllerName.text
      //});
      //return post(
       // 'http://127.0.0.1:5000/reviews/update',
       // headers: <String, String>{
       //   'authorization': basicAuth,
       // },
       // body: jsonEncode(<String, String>{
       //     'comment': controllerComment.text,
       //     'approval': controllerApproval.text,
       //     'user_id': '7',
       // }),
      //);
   // ),
 // }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: Text("${widget.list[widget.index][0]}")),
      body: new Container(
        padding: const EdgeInsets.all(20.0),
        child: new Card(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text("${widget.list[widget.index][2]}", style: new TextStyle(fontSize:20 ,),),
                new Text("- ${widget.list[widget.index][1]}"),
                new Padding(padding: const EdgeInsets.only(top:30.0),),
                new TextField(
                  controller: controllerComment,
                  decoration: new InputDecoration(
                    hintText: "", labelText: "Opmerking"),
                ),
                new TextField(
                  controller: controllerApproval,
                  decoration: new InputDecoration(
                    hintText: "0 is goedgekeurt, 1 is fout.", labelText: "Goedkeuring"),
                ),
                new Row(
                  children: <Widget>[
                    RaisedButton(
                      child: Text('Verstuur'),  
                      textColor: Colors.white, 
                      color: Color(0xFF000066),
                      onPressed: () {  
                        updateReview();
                        //Navigator.push(  
                        //  context,  
                        //  MaterialPageRoute(builder: (context) => ReviewsList()),  
                        //);                     
                      },   
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
