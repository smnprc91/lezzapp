import 'package:flutter/material.dart';
import 'package:lezzapp/bloc/bloc.dart';
import 'package:lezzapp/screen/chat/allchat.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Bloc _control = Bloc();
  late TabController _tabController;

  late int indexcaricato;
  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 1,
    );
    indexcaricato = 1;

    _control.caricaIndex(indexcaricato);
    _tabController.addListener(() {
      setState(() {
          indexcaricato = _tabController.index;
          _control.caricaIndex(indexcaricato);
        });
        print('merda');
        print(indexcaricato);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            bottom: TabBar(
                onTap: (index) {
                  print('ok');
                  print(indexcaricato);
                },
                controller: _tabController,
                indicatorColor: Colors.white,
                tabs: const [
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
        body: TabBarView(controller: _tabController, children: [
          Container(),
           AllChat(),
          Container(),
          Container(),
        ]),
        floatingActionButton: StreamBuilder(
          stream: _control.streamindex,
          builder: (context, snapshot) {
            int? checkint;
            if (snapshot.hasData) {
              checkint = snapshot.data as int?;
            }
            return FloatingActionButton(
              backgroundColor: Theme.of(context).primaryColor,
              child: _control.cambioicona(checkint),
              onPressed: (() {
                print('snapshot');
                print(snapshot.data);
              }),
            );
          },
        ));
  }
}
