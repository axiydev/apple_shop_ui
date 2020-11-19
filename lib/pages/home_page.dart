import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  static final String id="home_page";
  @override
  _HomePageState createState()=>_HomePageState();
}
class _HomePageState extends State<HomePage>{

  final List<String> _itemsLt=[
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.png',
    'assets/images/image_4.jpg',
    'assets/images/image_5.jpg',
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar:AppBar(
      leading:Icon(Icons.menu),
      title:Text('Apple Products'),
      centerTitle:true,
      elevation:0.0,
      backgroundColor:Colors.deepOrange,
      bottomOpacity:0.0,
      actions:[
        Padding(
          padding:EdgeInsets.all(10),
          child:Container(
            height:30,
            width:36,
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(10),
               color:Colors.yellow[800],
            ),
            child:Center(
              child:Text('7'),
            ),
          ),
        ),
      ],
    ),
      body:Container(
        color:Colors.deepOrange,
        padding:EdgeInsets.all(15),
        height:double.infinity,
        width:double.infinity,
        child:Column(
          children:[
            //#HEADER
            Container(
              height: 220,
              decoration:BoxDecoration(
                color:Colors.red,
                borderRadius:BorderRadius.circular(20),
                image:DecorationImage(
                  image:AssetImage('assets/images/image_4.jpg'),
                  fit:BoxFit.cover,
                ),
              ),
              child:Container(
                height:220,
                padding:EdgeInsets.all(20),
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(20),
                  gradient:LinearGradient(
                    begin:Alignment.bottomRight,
                    colors:[
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.3),
                      Colors.black.withOpacity(0.2),
                    ],
                  ),
                ),
                //#HEADER TEXT AND BUTTON
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.end,
                  children:[
                    //#LIFESTYLE SALE TEXT
                    Container(
                      child:Text('Lifestyle sale',style:TextStyle(color:Colors.white,fontSize:33),),
                    ),
                    SizedBox(height:30),
                    //SHOP NOW BUTTON
                    Container(
                      height:50,
                      margin:EdgeInsets.symmetric(horizontal:20),
                      decoration:BoxDecoration(
                        color:Colors.white,
                        borderRadius:BorderRadius.circular(10),
                      ),
                      child:Center(
                        child:Text('Shop Now',style:TextStyle(color:Colors.grey[600],),),
                      ),
                    ),
                    SizedBox(height:12),
                  ],
                ),
              ),
            ),
            SizedBox(height:20),
            Expanded(
              //#ITEMS GRIDVIEW
              child:GridView.count(
                crossAxisCount:1,
                mainAxisSpacing:10.0,
                children:_itemsLt.map((item)=>_itemWid(item)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
  //#WIDGET FUNCTIN
  Widget _itemWid(String item){
    return Card(
      elevation:0.0,
      color:Colors.transparent,
      child:Container(
        decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(20),
          image:DecorationImage(
            image:AssetImage(item),
            fit:BoxFit.cover,
          ),
        ),
        child:Container(
          padding:EdgeInsets.all(20),
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(20),
            gradient:LinearGradient(
              begin:Alignment.bottomRight,
              colors:[
                Colors.black.withOpacity(0.07),
                Colors.black.withOpacity(0.05),
                Colors.black.withOpacity(0.01),
              ],
            ),
          ),
          child:Column(
            mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment:CrossAxisAlignment.end,
            children:[
              Icon(Icons.favorite,color:Colors.red,size:35),
            ],
          ),
        ),
      ),
    );
  }
}

