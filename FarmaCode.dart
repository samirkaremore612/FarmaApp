import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Bottom APP menu",
    home: HomePage(),



  ));
}


String name="";
String product_name="";

class FarmersPage extends StatefulWidget{

  @override
  State<StatefulWidget>createState(){
    return _FarmersPageState();

  }

}
class _FarmersPageState extends State<FarmersPage>{
  final _controller=TextEditingController();
  final _textcontroller=TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children:<Widget>[
          Text(product_name),

          Container(
            child:TextField(
              controller:_textcontroller,
            ),
            padding:EdgeInsets.all(32),
          ),
          Container(
            width:double.infinity,
            child:FlatButton(
                child:Text("Enter product name your name and phone number so buyer can contact you"),
                color:Colors.red,
                onPressed:(){
                  setState(() {
                    product_name=_textcontroller.text;
                  });
                }
            ),
          ),//yhase katna
          Container(child:Image.network(name),),

          Container(
            child:TextField(
              controller:_controller,
            ),
            padding:EdgeInsets.all(32),
          ),
          Container(
            width:double.infinity,
            child:FlatButton(
                child:Text("Add your product image url"),
                color:Colors.red,
                onPressed:(){
                  setState(() {
                    name=_controller.text;
                  });
                }
            ),
          ),
          FlatButton(
              child:Text("home"),
              onPressed:(){
                Navigator.push(context,MaterialPageRoute(builder:
                    (context)=>HomePage(),
                ));
              }


          )

        ],
      ),



    );

  }

}



class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(children:<Widget>[Image.network(name),

        Text('$product_name'),]),
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text("FreshFarmApp"),


        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {}
          ),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(children: <Widget>[
          //header

          //header
         
          //body
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("Home Page"),
              leading: Icon(Icons.home),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder:
                  (context)=>FarmersPage(),
              ));
            },
            child: ListTile(
              title: Text("Farmers zone"),
              leading: Icon(Icons.dashboard),
            ),
          ),
          Divider(),

        ]),
      ),
    );
  }
}
