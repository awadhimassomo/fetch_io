
import 'package:fetch_io/Home_Screens/HomePage.dart' show HomePage;
import 'package:fetch_io/Screens/Cart.dart';
import 'package:fetch_io/Screens/ProductDetails.dart';
import 'package:fetch_io/Screens/Profile.dart';
import 'package:fetch_io/model.dart';
import 'package:flutter/material.dart';


class MainPage extends StatefulWidget {
  static String routeName="/MainPage";
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
 List PAge=[
   const HomePage(),
   const Profile(),
   CartScreen(),
   CartScreen(),
   CartScreen(),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
     body: PAge[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
                   currentIndex: _currentIndex ,
               type: BottomNavigationBarType.fixed,
               backgroundColor:  Colors.grey[200],
                   elevation:0,

               items: const [
                 BottomNavigationBarItem(
                   icon: Icon(Icons.home_outlined),
                   label: 'Home',

                                   ),
                 BottomNavigationBarItem(
                   icon: Icon(Icons.menu),
                   label: 'Category',),

                 BottomNavigationBarItem(
                   icon: Icon(Icons.mark_email_read_outlined),
                   label: 'Sales',),
                          //todo change this icon to megaphone icon

                 BottomNavigationBarItem(
                   icon: Icon(Icons.shopping_cart),
                   label: 'Cart',),

                 BottomNavigationBarItem(
                   icon: Icon(Icons.account_circle_outlined),
                   label: 'Profile',)
               ],
                      onTap: (index){
                       setState(() {
                     _currentIndex=index;
                     });
                 },

                ),

                    );
  }
}
