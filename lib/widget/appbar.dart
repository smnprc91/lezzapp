import 'package:flutter/material.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MainAppBar({ Key? key }) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(60);
  @override
  State<MainAppBar> createState() => _MainAppBarState();
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar( 
      automaticallyImplyLeading: false,
      title: const Text('Lezz App'),
      backgroundColor: Theme.of(context).primaryColor,);
  }
}