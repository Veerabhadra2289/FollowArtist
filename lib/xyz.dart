import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> artistNames = [
  'Argith Singh',
  'John Doe',
  'Jane Smith',
  'Michael Johnson',];

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row( // New Row to hold "Back" button and "Follow Artists" text
                      children: [
                        BackButton(
                          color: Colors.black,
                        ),
                        Text(
                          'Follow Artists',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Follow your favourite artists. Or you can skip it for now',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/13156810/pexels-photo-13156810.jpeg?auto=compress&cs=tinysrgb&w=400'),
                      ),
                      title: Row(
                        children: [
                          Text('Argith Singh',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.verified,
                              color: Colors.blue),
                        ],
                      ),
                      trailing: Container(
                        margin: const EdgeInsets.only(right: 20),
                        height: 25,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Color(0xe2f9ac38),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            'Follow',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    );


                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 40),
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color(0xfff1ede5),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xe2f9ac38),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    margin: const EdgeInsets.only(bottom: 40),
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color(0xe2f9ac38),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
