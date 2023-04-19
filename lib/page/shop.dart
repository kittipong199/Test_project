import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search bar
        Container(
          padding: const EdgeInsets.all(12),
          // แนวนอน ยาว 25 
          margin: const EdgeInsets.symmetric(horizontal: 25),
          // สร้าง box 
           decoration: BoxDecoration(
              color: Colors.grey[200], 
              // ลบ ขอบ 
              borderRadius: BorderRadius.circular(8),
              
              
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Search',
                  style: TextStyle(color: Colors.grey),
                  
                  ),

                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  )
                ],
              ),
         
        ),
      ],
    );
  }
}
