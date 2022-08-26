import 'package:flutter/material.dart';


class Itemscart extends StatelessWidget {
  const Itemscart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (() {
          Navigator.of(context).pop();
        }), icon:Icon(Icons.arrow_back)),
        backgroundColor: Colors.white,
        elevation: 2.0,
         shadowColor: Colors.transparent,
        title: Text('Cart',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){}, icon: Icon(Icons.shopping_cart)),
        ]
      ), 
      
      body:Column(
       children: [
        Padding(padding: EdgeInsets.all(10)),
        GridView.count(
          padding: EdgeInsets.symmetric(vertical:20, horizontal: 10),
         mainAxisSpacing: 35,
         crossAxisSpacing: 20,
          crossAxisCount: 2,
        childAspectRatio: 0.7,
        shrinkWrap: true,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color:Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 3,
                )
              ]
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: (){},
                  child:Container(
                    margin: EdgeInsets.all(10),
                    child: Image.network('https://m.media-amazon.com/images/I/417+h2wo-TL._AC_SY1000_.jpg',
                    height: 160, width: 160,
                    ),
                  ) ,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom:5),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text('TMA-2 HD Wireless',style: TextStyle(fontSize:15,fontWeight: FontWeight.w900),),
                  ) ,),
                  Padding(
                  padding: EdgeInsets.only(bottom:2),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Rp.1,500.000',style: TextStyle(fontWeight: FontWeight.w500,fontSize:14,color:Colors.red),),
                  ) ,),

                  Padding(padding: 
                  EdgeInsets.symmetric(vertical:6),
                  child:Container(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Icon(Icons.star,size:10, color: Colors.yellow,),
                        SizedBox(width: 2,),
                        Text('4.6',style: TextStyle(fontSize:10),),
                        SizedBox(width: 10,),
                        Text('86 Reviews',style: TextStyle(fontSize: 10),),
                        SizedBox(width: 50,),
                        Icon(Icons.more_vert, size: 15,)
                      ],
                    ),
                  )
                  )
                  
              ]
              ),
          ),
         

          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color:Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 3,
                )
              ]
            ),
            child: Column(
              children: [
                InkWell(
                  splashColor:Colors.grey,
                  onTap: (){},
                  child:Container(
                    margin: EdgeInsets.all(10),
                    child: Image.network(
                      'https://soundium.net/media/catalog/product/cache/b3b166914d87ce343d4dc5ec5117b502/t/m/tma-2-hd-wireless-iigqopqt-zoom.png',
                      height:160, width: 160,),
                  ) ,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom:5),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text('TMA-2 HD Wireless',style: TextStyle(fontSize:15,fontWeight: FontWeight.w900),),
                  ) ,),
                  Padding(
                  padding: EdgeInsets.only(bottom:2),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Rp.1,500.000',style: TextStyle(fontWeight: FontWeight.w500,fontSize:14,color:Colors.red),),
                  ) ,),

                  Padding(padding: 
                  EdgeInsets.symmetric(vertical:6),
                  child:Container(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Icon(Icons.star,size:10, color: Colors.yellow,),
                        SizedBox(width: 2,),
                        Text('4.6',style: TextStyle(fontSize:10),),
                        SizedBox(width: 10,),
                        Text('86 Reviews',style: TextStyle(fontSize: 10),),
                        SizedBox(width: 50,),
                        Icon(Icons.more_vert, size: 15,)
                      ],
                    ),
                  )
                  )
              ]),
          ),


        ],
        ),
       ],
      ),
    );
  }
}