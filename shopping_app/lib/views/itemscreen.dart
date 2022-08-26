import 'package:flutter/material.dart';
import 'package:shopping_app/views/items_cart.dart';





class Itemscreen extends StatefulWidget {
  const Itemscreen({Key? key}) : super(key: key);

  @override
  State<Itemscreen> createState() => _ItemscreenState();
}

class _ItemscreenState extends State<Itemscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (() {
          Navigator.of(context).pop();
        }), icon:Icon(Icons.arrow_back)),
        elevation: 2.0,
        backgroundColor: Colors.white,
         shadowColor: Colors.transparent,
        title: Text('Detail Product',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              Container(
                padding: EdgeInsets.symmetric(vertical:20 ,horizontal:20),
                margin: EdgeInsets.all(15),
                height: 300,
                width: 300,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(
                      'https://soundium.net/media/catalog/product/cache/b3b166914d87ce343d4dc5ec5117b502/t/m/tma-2-hd-wireless-iigqopqt-zoom.png'))
                ),
              ),

              SizedBox(height: 5,),

              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  margin: EdgeInsets.all(15),
                   alignment: Alignment.centerLeft,
                   child: Text('TMA-2 HD Wireless',style: TextStyle(
                    fontSize:20,color: Colors.black,fontWeight:FontWeight.w900 ),),
                ),
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 2),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Rp.1,500.000',style: TextStyle(fontWeight: FontWeight.w500,fontSize:15,color:Colors.red),
                  ),
                  ),
                ),

                Padding(padding: 
                  EdgeInsets.symmetric(vertical:6),
                  child:Container(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Icon(Icons.star,size:10, color: Colors.yellow,),
                        SizedBox(width: 2,),
                        Text('4.6',style: TextStyle(fontSize:12),),
                        SizedBox(width: 10,),
                        Text('86 Reviews',style: TextStyle(fontSize: 12),),
                        SizedBox(width: 50,),
                        Container(
                          color: Colors.green[50],
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text('Tersedia:250',style: TextStyle(color:Colors.green,fontSize:10 ),),
                        ),
                      ],
                    ),
                  )
                  ),
                   
                   SizedBox(height: 5,),

                   Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Description Product', 
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900,color: Colors.black),),
                     SizedBox(height: 5,),
                     Text('The speaker unit contains a diaphragm that is pecision-grown from NAC Audio bio-cellulose,making it stiffer,lighter and stronger than regular PET speaker units,and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers.',
                     style:TextStyle(fontSize:12,color:Colors.black),
                     textAlign: TextAlign.justify,
                     ),
                     ],
                    ),
                   ),

                   SizedBox(height: 10,),

                   Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.all(15),
                    alignment: Alignment.centerRight,
                    color: Colors.blue[800],
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:MaterialButton(
                      child: Text('Add to Cart',style: TextStyle(fontSize:15,color: Colors.white),),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:((context) => Itemscart())));
                      })
                   )
            ],
            
          ),
        )
      ),
      );
    
  }
}