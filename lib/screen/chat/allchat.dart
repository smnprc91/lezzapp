import 'package:flutter/material.dart';

class AllChat extends StatefulWidget {
  const AllChat({Key? key}) : super(key: key);

  @override
  State<AllChat> createState() => _AllChatState();
}

class _AllChatState extends State<AllChat> {
  String tags = '';
  String img = '';
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.transparent,
          width: MediaQuery.of(context).size.width,
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    tags = 'k';
                    img = 'https://chi-e.com/wp-content/uploads/2018/07/gabibbo.jpg';
                  });
                  popUp(tags,img);
                },
                child:  Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15, top: 10, bottom: 10),
                  child: Stack(
                  children:const [
                    Hero(
                      tag: 'k',
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 25,
                        foregroundImage: NetworkImage(
                            'https://chi-e.com/wp-content/uploads/2018/07/gabibbo.jpg'),
                      ),
                    ),

                    CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 25,
                        foregroundImage: NetworkImage(
                            'https://chi-e.com/wp-content/uploads/2018/07/gabibbo.jpg'),
                      ),

                  ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Gabibbo',
                      style: TextStyle(fontWeight: FontWeight.w900)),
                  Text(
                    'oh compà.... SPLASH AHAHAHAHA',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  )
                ],
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text('19.00',
                    style: TextStyle(fontWeight: FontWeight.w300)),
              )
            ],
          ),
        ),
          Container(
          color: Colors.transparent,
          width: MediaQuery.of(context).size.width,
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    tags='m';
                    img ='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT94BsaNH9OSdUE2TZrGtdhms9iqoZeaFXFwQ&usqp=CAU';
                  });
                  popUp(tags,img);
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15, top: 10, bottom: 10),
                  child: Stack(
                  children:const[
                    Hero(
                      tag: 'm',
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 25,
                        foregroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT94BsaNH9OSdUE2TZrGtdhms9iqoZeaFXFwQ&usqp=CAU'),
                      ),
                    ),

                    CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 25,
                        foregroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT94BsaNH9OSdUE2TZrGtdhms9iqoZeaFXFwQ&usqp=CAU'),
                      ),

                  ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Caghino',
                      style: TextStyle(fontWeight: FontWeight.w900)),
                  Text(
                    'la che ti picchio',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  )
                ],
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text('19.00',
                    style: TextStyle(fontWeight: FontWeight.w300)),
              )
            ],
          ),
        )
      ],
    );
  }

  popUp(tags,img) {
    Navigator.of(context).push(PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 900),
        opaque: false,
        barrierColor: Colors.transparent.withOpacity(0.2),
        barrierDismissible: true,
        pageBuilder: (BuildContext context, _, __) {
          return Hero(
            
            tag: tags,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration:  BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                           img),
                      ),
                    )),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.8,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.message),
                      Icon(Icons.phone_callback),
                      Icon(Icons.video_camera_back),
                      Icon(Icons.info_outline_rounded),
                    ],
                  ),
                )
              ],
            ),
          );
        }));
  }
}
