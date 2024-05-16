import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final int selectedItem;

  const NavBar({super.key, required this.selectedItem});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
    int _currentIndex = 0; 

    void changeSelectedNavBar(int index){
      setState(() {
        _currentIndex = index;
      });
      if (index == 0){
        Navigator.pushNamed(context, '/home');
      }
      else if (index == 1){
        Navigator.pushNamed(context, '/film');
      }
    }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem(
          icon: Icon(Icons.book_outlined),
          label: 'Buku'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.movie_outlined),
          label: 'Film'
        )
      ],
      selectedItemColor: Colors.amber,
      unselectedItemColor: Colors.black,
      onTap: changeSelectedNavBar,
      currentIndex: widget.selectedItem,
    );
  }
}

        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: _currentIndex,
        //   onTap: (index){
        //     setState(() {
        //       _currentIndex = index;
        //     });
        //     if (index == 1){
        //       Navigator.pushNamed(context, '/film');
        //     }
        //   },
        //   selectedItemColor: Colors.red,
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.book_outlined),
        //       label: 'Buku'
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.movie_outlined),
        //       label: 'Film'
        //     )
        //   ]
        // ),