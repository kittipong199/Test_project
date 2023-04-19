import 'package:flutter/material.dart';
import 'package:test_project/components/botton_nav_page.dart';
import 'package:test_project/page/cart.dart';
import 'package:test_project/page/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    // shop page
    const ShopPage(),

    // cart page

    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottonnavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) => IconButton(
          icon: Padding(padding: EdgeInsets.only(left: 12.0),
          child:  Icon(Icons.menu,
          
          color: Colors.black,),),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),)
      ),

      // Drawer
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
             
              children: [
                       // logo

            DrawerHeader(child: Image.asset('lib/images/nike-logo1.png',
            height: 250,
            color: Color.fromARGB(255, 28, 27, 27),
            ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
            // เส้นแบ่ง 
            child: Divider(
              color: Colors.grey[800],
            ),
            ),


            // Other Page 
           const  Padding(padding:  EdgeInsets.only(left:25.0 ),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text("Home",
              style: TextStyle(color: Colors.white),),
            ),
            
            ),

            const  Padding(padding: const EdgeInsets.only(left:25.0 ),
            child: ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.white,
              ),
              title: Text("About",
              style: TextStyle(color: Colors.white),),
            ),
             )
            
              ],
            ),
       
           
             const Padding(padding: const EdgeInsets.only(left:25.0 , bottom: 25),
            child: ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text("LogOut",
              style: TextStyle(color: Colors.white),),
            ),
            
            )
          ],
        ),
      ),
      body: pages[selectedIndex],
    );
  }
}
  // GestureDetector(
  //           onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ShowProductPage()),
  //           child: Container(
  //             width: 350,
  //             decoration: BoxDecoration(
  //               color: Colors.grey[900],
  //               // ขอบ button
  //               borderRadius: BorderRadius.circular(12),
  //             ),
  //             padding:  const EdgeInsets.all(25),
  //             child: const Center(
  //               child: Text("Shop Now",
  //               style:  TextStyle(color: Colors.white,
                
  //               fontWeight: FontWeight.bold,
  //               fontSize: 16),
                
  //               ),
  //             ),
  //           ),
  //         ),
  //         )