import 'package:flutter/material.dart';
import 'Chatmes.dart';
class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  
  TextEditingController _text=TextEditingController();
   final List<Chatmes> _messages = <Chatmes> [];
  void _finish( String text)
  {
    _text.clear();
    Chatmes message=Chatmes(text: text);
    setState((){
    _messages.insert(0,message); 
  });
  }
  
  Widget Shower()
  {
    return IconTheme(
      data: IconThemeData(
        color:Colors.blueAccent,
      ),
          child: Container(
         margin: EdgeInsets.symmetric(horizontal:8.0),
        child:Row(

          children: [
           Flexible(
             child:  TextField(
           decoration: InputDecoration(
             hintText: "type a message",
           ),
           controller: _text,
            

         )
           ),
           Container(
             margin: EdgeInsets.symmetric(horizontal:4.0),
             child:IconButton(
               icon:Icon(Icons.send),
               onPressed: ()=>{
                 _finish(_text.text),
                  },
             ),
           ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          Flexible(
            child:ListView.builder(
              padding:EdgeInsets.all(8.0),
              reverse:true,
              itemBuilder:(_,int index)=>_messages[index],
              itemCount: _messages.length,
            )
          ),
          Divider(height:1.0),
          Container(
            decoration:BoxDecoration(
              color:Theme.of(context).cardColor,
            ),
            child:Shower()
          )
        ],
      ),
    );
    
  }
}