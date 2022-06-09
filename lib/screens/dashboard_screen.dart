import 'package:email_password_login/screens/home_screen.dart';
import 'package:email_password_login/screens/list_books_screen.dart';
import 'package:email_password_login/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:email_password_login/screens/pages/book_detail.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    ListBook(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: { 
        BookDetail.nameRoute: (context) => BookDetail()
      },
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 184, 45, 45),
          title: Text('E-Books'),
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'List'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]
        ),
      ),
    );
  
  }
}