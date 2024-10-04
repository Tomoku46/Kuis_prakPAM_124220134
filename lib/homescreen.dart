import 'package:flutter/material.dart';
import 'package:kuis_prakpam_124220134/CS.dart';
import 'package:kuis_prakpam_124220134/daftar_barang_dummy.dart';

class Homescreen  extends StatelessWidget {
  final String username;
  Homescreen ({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 200,
                width: 500,
                child: Card(
                  color: Color.fromARGB(255, 29, 75, 155),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Image.asset('assets/upnLogo.png',width: 100, height: 100,
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 35),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Text('$username',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  
                                ),),
                                Text('Admin', style: TextStyle(
                                  color: Colors.white60
                                ),),
                                
                                 Container(
                                  width: 200,
                                  height: 60,
                                   child: Padding(
                                    
                                     padding: const EdgeInsets.all(15.0),
                                     child: FloatingActionButton(
                                      
                                       onPressed: (){Navigator.pop(context);
                                       }, 
                                       child: Text('log out', )),
                                   ),
                                 )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                        ],
                  ),
                ),
              ),
            ),

            
            Container(
              height: 500,
                width: 500,
                child: Card(
                  color: Color.fromARGB(255, 190, 192, 197),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      ), 
                      itemCount: supermarketItemList.length,
                      itemBuilder: (BuildContext context,int index) { 
                        final SupermarketItem place = supermarketItemList[index];
                        return Container(
                          child: Card(
                            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.network(place.imageUrls[0], width: 150, height: 100,),
                                Text(supermarketItemList[index].name,),
                                Text(supermarketItemList[index].price),
                              ],
                            ),
                          ),
                        );
                       },),
                ),
            ),
          Container(
            height: 60,
            width: 200,
           child: FloatingActionButton(
            
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => Cs()))
              ;
            },
            child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Padding(padding: EdgeInsets.symmetric(vertical: 30)),
                  Spacer(flex: 100,),
                  
                  Text('Butuh Bantuan?'),
                   Image.asset('assets/customerService.png', width: 20, height: 20,)
                ],
              ),
            
            ],
           ),
          )
         ) ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}