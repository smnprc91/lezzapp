import 'package:flutter/material.dart';
import 'package:lezzapp/screen/chat/allchat.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Theme.of(context).primaryColor,
              title: const Text('LezzApp'),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 35.0),
                  child: Icon(Icons.search),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Icon(
                    Icons.more_vert,
                  ),
                ),
              ],
              bottom: const TabBar(
               indicatorColor: Colors.white,
                tabs: [
                Tab(
                  icon: Icon(
                    Icons.photo_camera,
                  ),
                ),
                Tab(
                  text: 'CHAT',
                ),
                Tab(
                  text: 'STATO',
                ),
                Tab(
                  text: 'CHIAMATE',
                )
              ])),
         body: TabBarView(children:[
           Container(),
           AllChat(),
           Container(),
           Container(),
         ]),
         floatingActionButton: FloatingActionButton(onPressed: (() {
           
         }),
        )));
  }
}
