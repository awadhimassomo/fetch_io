import 'package:flutter/material.dart';

class CartItem {

  final String name;
  final String thumbnail;
  int quantity;

  CartItem({required this.name, required this.thumbnail, this.quantity = 1});
}

class CartScreen extends StatefulWidget {
  static String routeName="/CartScreen";
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<CartItem> _cartItems = [
    CartItem(name: "Item 1", thumbnail: "https://via.placeholder.com/100"),
    CartItem(name: "Item 2", thumbnail: "https://via.placeholder.com/100"),
    CartItem(name: "Item 3", thumbnail: "https://via.placeholder.com/100"),
    CartItem(name: "Item 4", thumbnail: "https://via.placeholder.com/100"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                final item = _cartItems[index];
                return ListTile(
                  leading: Image.network(item.thumbnail),
                  title: Text(item.name),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          setState(() {
                            if (item.quantity > 1) item.quantity--;
                          });
                        },
                      ),
                      Text(item.quantity.toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            item.quantity++;
                          });
                        },
                      ),
                    ],
                  ),
                );
              },
              childCount: _cartItems.length,
            ),
          ),
        ],
      ),
    );
  }
}
