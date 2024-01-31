import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  List<OrderItem> orderItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order'),
        backgroundColor: const Color(0xFF6096B4),
      ),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: orderItems.length,
            itemBuilder: (context, index) {
              return buildOrderItemCard(orderItems[index]);
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget buildOrderItemCard(OrderItem orderItem) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 80,
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(orderItem.imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    orderItem.itemName,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Penulis: ${orderItem.author}',
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Text(
                    'Total: ${orderItem.quantity}',
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        orderItems.remove(orderItem);
                      });
                    },
                    child: const Text('Hapus'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // Menambahkan contoh item ke dalam keranjang
    orderItems.add(OrderItem(
      itemName: 'Manga Jujutsu Kaisen Vol.1',
      author: 'Gege Akutami',
      quantity: 2,
      imagePath: 'images/JJKVol1.jpg',
    ));
    orderItems.add(OrderItem(
      itemName: 'Manga One Punch Man Vol.15',
      author: 'One & Yusuke Murata',
      quantity: 1,
      imagePath: 'images/OPMVol15.jpg',
    ));
    orderItems.add(OrderItem(
      itemName: 'Manga One Piece Vol.103',
      author: 'Eiichiro Oda',
      quantity: 3,
      imagePath: 'images/OPVol103.jpg',
    ));
  }
}

class OrderItem {
  final String itemName;
  final String author;
  final int quantity;
  final String imagePath;

  OrderItem(
      {required this.itemName,
      required this.author,
      required this.quantity,
      required this.imagePath});
}
