import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstPage(title: 'DC School Shootings'),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key, required this.title}) : super(key: key);
  final String title;

  // final List<String> images = [
  //   'https://cdn.britannica.com/03/64303-050-65ECB7D0/Washington-DC-locator-map-united-states-city.jpg',
  //   'https://washington.org/sites/default/files/2023-07/Crowdriff%20DC%20Aerial%20-%20%40michaelzhao1203.png'
  //   // Add more image URLs as needed
  // ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        backgroundColor: Colors.amber[200],
        title: Text(title),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HighSchool(title: 'High Schools');
              }));
            },
            icon: const Icon(Icons.school),
            tooltip: 'High Schools',
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const MiddleSchool(title: 'Middle Schools');
              }));
            },
            icon: const Icon(Icons.school),
            tooltip: 'Middle Schools',
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ElementarySchools(title: 'Elementary Schools');
              }));
            },
            icon: const Icon(Icons.school),
            tooltip: 'Elementary Schools',
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //Image(image: AssetImage("assets/images/ImageForBitCamp.png"),
          //fit: BoxFit.cover,
        //),
          Image.asset('assets/images/ImageForBitCamp.png',
            height: 200,
            scale: 2.5,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "School shootings have become a big worry in the United States in "
                    "recent years, with occurrences happening across the country. "
                    "We are going to focus on the US Capital: Washington DC."
                    "From 2020 through 2023, DC experienced an excessive number of "
                    "these catastrophic events. These incidents have spurred a heated debate"
                    "over gun control laws, mental health issues, and school safety precautions."
                    "Because of the frequency and severity of these shootings, students, teachers, "
                    "parents, and the general public have expressed widespread fear and concern. "
                    "We are providing policy makers with hot spot locations in DC and what to "
                    "address when it comes to this situation.",
                style: TextStyle(
                  fontFamily: 'Arial',
                  color: Colors.red[900],
                  letterSpacing: 1.0,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "SELECT THE GRADUATION CAPS FOR DIFFERENT SCHOOL TRENDS",
                style: TextStyle(
                  color: Colors.red[900],
                  letterSpacing: 2.0,
                ),
              ),
            ),
            // ... rest of your widgets
          ],
        ),
      ),
    );
  }
}


class HighSchool extends StatelessWidget {
  const HighSchool({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[200],
        title: Text(title),
      ),
      body: Center(


        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            CarouselSlider(
              options: CarouselOptions(height: 400.0),
              items: [0, 1, 2, 3, 4].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        image: DecorationImage(
                          image: AssetImage('assets/images/image ($i).png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),

            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
  ],
      ),
      ),
    );
  }
}

class MiddleSchool extends StatelessWidget {
  const MiddleSchool({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[200],
        title: Text(title),
      ),
      body: Center(

        child: Column(

          children: <Widget>[
            SizedBox(height: 20.0),
            CarouselSlider(
              options: CarouselOptions(height: 400.0),
              items: [5, 6].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        image: DecorationImage(
                          image: AssetImage('assets/images/image ($i).png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

class ElementarySchools extends StatelessWidget {
  const ElementarySchools({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[200],
        title: Text(title),
      ),
      body: Center(

        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            CarouselSlider(
              options: CarouselOptions(height: 400.0),
              items: [7, 8].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        image: DecorationImage(
                          image: AssetImage('assets/images/image ($i).png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

