// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lezzapp/screen/homepage/homepage.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String dropdownValue = 'Gondor';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
     
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Verifica il tuo numero di telefono',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff128c7e),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'LezzApp ti invierà un SMS con un codice di verifica, interisci il paese e il tuo numero di telefono, animale muoviti. ',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ),
        dropDownCountry(),
        row(),
        button()
      ],
    ));
  }

  dropDownCountry() {
    return Padding(
      padding: const EdgeInsets.only(left:40.0,right: 40.0,top: 40),
      child: Center(
        child: DropdownButton<String>(
          isExpanded: true,
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
          underline: Container(
            height: 2,
            color: Theme.of(context).primaryColor,
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>['Gondor', 'Chilivani', 'Arzakenistan']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Center(child: Text(value)),
            );
          }).toList(),
        ),
      ),
    );
  }

  row() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
            height: 100,
            width: 100,
            child: TextField(
              style: TextStyle(
                  color: Theme.of(context).primaryColor, fontSize: 15),
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Theme.of(context).primaryColor),
                    //  when the TextFormField in unfocused
                  ),
                  labelText: '+    39',
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20)),
            ),
          ),
        ),
        SizedBox(
          height: 100,
          width: MediaQuery.of(context).size.width*0.5,
          child: TextField(
            style: TextStyle(
                color: Theme.of(context).primaryColor, fontSize: 15),
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Theme.of(context).primaryColor),
                  //  when the TextFormField in unfocused
                ),
                labelText: 'Numero di telefono',
                labelStyle: TextStyle(color: Colors.black, fontSize: 20)),
          ),
        ),
        
      ],
    );
  
  }
  button(){
    return Center(child: ElevatedButton(
      style: ElevatedButton.styleFrom(primary: Theme.of(context).primaryColor),
      onPressed: (){ Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomePage()),
  );}, child: Text('Next')));
  }
}
