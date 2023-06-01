import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter_exit_app/flutter_exit_app.dart';

import 'package:flutter/services.dart';

const mycolor = Color(0xff13282b);
const mycolor1 = Color(0xff055256);
const mycolor2 = Color(0xff9abbba);
const mycolor3 = Color(0xffdef9fa);

List Myimage = [
  Image.asset('images/uni (2).png'),
  Image.asset('images/uni (1).png'),
  Image.asset('images/uni (11).png'),
  Image.asset('images/uni (4).png'),
  Image.asset('images/uni (3).png'),
  Image.asset('images/uni (7).png'),
  Image.asset('images/uni (14).png'),
  Image.asset('images/uni (6).png'),
  Image.asset('images/uni (13).png'),
  Image.asset('images/uni (12).png'),
];
List Mylist = [
  'Massachusetts Institute of Technology',
  'University of Cambridge',
  'Stanford University',
  'University of Oxford',
  'Harvard University',
  'California Institute of Technology',
  'Swiss Federal Institute of Technology',
  'UCL (University College London)',
  'University of Chicago',
  'National University of Singapore (NUS)'
];
List Mysubtitle = [
  'United States',
  'United Kingdom',
  'United States',
  'United Kingdom',
  'United States',
  'United States',
  'Switzerland',
  'United Kingdom',
  'United States',
  'Singapore'
];

List MyTitle = [
  'MIT is a private research university that was founded in 1861 and is located in Cambridge, Massachusetts. It has five schools and one college, and offers various undergraduate and graduate programs in fields such as science, engineering, technology, management, humanities, and social sciences. \nMIT has a strong focus on innovation and entrepreneurship, and has many research centers and laboratories that conduct cutting-edge research in various domains. Some of its notable research areas include artificial intelligence, biotechnology, nanotechnology, robotics, energy, and space exploration.\nMIT has a diverse and international community of students, faculty, staff, and alumni. As of 2021, it had 11,934 students from all 50 states and 135 countries, 1,069 faculty members from 73 countries, and 16,327 employees from 91 countries. It also has more than 140,000 living alumni from 190 countries.\nMIT has a reputation for academic excellence and prestige, and has produced many distinguished scholars and leaders in various fields. As of December 2021, it had 100 Nobel laureates, 26 Turing Award winners, 8 Fields Medalists, 58 National Medal of Science recipients, 29 National Medal of Technology and Innovation recipients, 50 MacArthur Fellows, 41 astronauts, and many entrepreneurs and innovators among its alumni, faculty members, or researchers.',
  'University of Cambridge is a public research university that was founded in 1209 and is located in Cambridge, United Kingdom. It consists of 31 colleges and six schools, and offers various undergraduate and graduate programs in fields such as arts and humanities, social sciences, sciences, engineering, medicine, and business.\nUniversity of Cambridge has a reputation for academic excellence and tradition, and has produced many distinguished scholars and leaders in various fields. As of December 2021, it had 121 Nobel laureates, 14 British prime ministers, 15 Fields Medalists, 11 Turing Award winners, 10 Oscar winners, and many influential figures in science, literature, and arts among its alumni, faculty members, or researchers.\nUniversity of Cambridge has a rich and diverse culture and history, and has many landmarks and attractions that reflect its heritage and identity. Some of its notable features include the King’s College Chapel, the Bridge of Sighs, the Mathematical Bridge, the Fitzwilliam Museum, the Cambridge University Botanic Garden, and the Cambridge University Library.\nUniversity of Cambridge has a strong focus on research and innovation, and has many research centres and institutes that conduct cutting-edge research in various domains. Some of its notable research areas include artificial intelligence, biotechnology, nanotechnology, quantum computing, climate change, and global health.',
  'Stanford University is a private research university that was founded in 1885 and is located in Stanford, California. It has seven schools that offer various undergraduate and graduate programs in fields such as business, education, engineering, humanities and sciences, law, medicine, and sustainability.\nStanford University has a reputation for academic excellence and innovation, and has produced many distinguished scholars and leaders in various fields. As of 2022, it had 21 Nobel laureates, 5 Turing Award winners, 4 Fields Medalists, 27 MacArthur Fellows, 19 astronauts, and many entrepreneurs and innovators among its faculty members, alumni, or researchers.\nStanford University has a large and diverse campus that occupies 8,180 acres of land and has over 600 buildings. It also has many research centers and institutes that conduct cutting-edge research in various domains. Some of its notable research areas include artificial intelligence, biotechnology, nanotechnology, energy, environment, and global health.\nStanford University has a vibrant and international community of students, faculty, staff, and alumni. As of 2022, it had 17,326 students from all 50 states and 98 countries, 2,304 faculty members from 65 countries, and over 230,000 living alumni from 151 countries.',
  'University of Oxford is a public research university that was founded in 1096 and is located in Oxford, United Kingdom. It consists of 39 colleges and six permanent private halls, and offers various undergraduate and graduate programs in fields such as arts and humanities, social sciences, sciences, medicine, and business.\nUniversity of Oxford has a reputation for academic excellence and influence, and has produced many distinguished scholars and leaders in various fields. As of 2022, it had 73 Nobel laureates, 14 British prime ministers, 15 Fields Medalists, 11 Turing Award winners, 10 Oscar winners, and many influential figures in science, literature, and arts among its alumni, faculty members, or researchers.\nUniversity of Oxford has a rich and diverse culture and history, and has many landmarks and attractions that reflect its heritage and identity. Some of its notable features include the Bodleian Library, the Radcliffe Camera, the Ashmolean Museum, the Oxford University Museum of Natural History, the Sheldonian Theatre, and the Bridge of Sighs.\nUniversity of Oxford has a strong focus on research and innovation, and has many research centres and institutes that conduct cutting-edge research in various domains. Some of its notable research areas include artificial intelligence, biotechnology, nanotechnology, quantum physics, climate change, and global health.',
  'Harvard University is a private Ivy League research university that was founded in 1636 and is located in Cambridge, Massachusetts, United States. It is named after John Harvard, a Puritan minister who donated his books and half of his estate to the college. It is the oldest institution of higher learning in the United States.\nHarvard University has 12 degree-granting schools and the Radcliffe Institute for Advanced Study, and offers various undergraduate and graduate programs in fields such as arts and sciences, law, business, medicine, education, public health, and government. It also has many research centers and institutes that conduct cutting-edge research in various domains.\nHarvard University has a reputation for academic excellence and prestige, and has produced many distinguished scholars and leaders in various fields. As of 2021, it had 160 Nobel laureates, 49 Pulitzer Prize winners, 48 Rhodes Scholars, 32 heads of state, and 8 U.S. presidents among its faculty members, alumni, or researchers.\nHarvard University has a large and diverse campus that covers 5,076 acres of land and has over 600 buildings. It also has many landmarks and attractions that reflect its heritage and identity. Some of its notable features include the Widener Library, the Harvard Art Museums, the Harvard Museum of Natural History, the Memorial Church, and the John Harvard Statue.',
  'California Institute of Technology, or Caltech. Caltech is a private research university located in Pasadena, California. It was founded in 1891 as a preparatory and vocational school, and became a degree-granting institution in 1920. Caltech is known for its excellence in science and engineering, and has been ranked among the top universities in the world by various publications\nCaltech has six academic divisions: Biology and Biological Engineering, Chemistry and Chemical Engineering, Engineering and Applied Science, Geological and Planetary Sciences, Humanities and Social Sciences, and Physics, Mathematics and Astronomy. Caltech offers 28 undergraduate majors (called options) and 30 graduate programs2. Caltech has a low student-faculty ratio of 3:1, and a small enrollment of about 1,000 undergraduates and 1,300 graduate students1. Caltech students are known for their high academic achievement, creativity, and collaboration.\nCaltech is also home to the Jet Propulsion Laboratory (JPL), which is a federally funded research and development center managed by Caltech for NASA. JPL is responsible for many of NASA’s robotic space missions, such as the Mars rovers, the Cassini orbiter, and the Juno probe1. Caltech also operates several other research facilities, such as the Palomar Observatory, the Laser Interferometer Gravitational-Wave Observatory (LIGO), and the Caltech Seismological Laboratory1.\nCaltech has a distinguished history of scientific discovery and innovation. Some of the notable achievements by Caltech faculty and alumni include\n\t*  The discovery of antimatter by Carl Anderson\n\t*  The development of quantum mechanics by Richard Feynman\n\t*  The invention of the integrated circuit by Jack Kilby\n\t*  The discovery of the first extrasolar planets by Michel Mayor and Didier Queloz\n\t*  The detection of gravitational waves by Kip Thorne, Barry Barish, and Rainer Weiss\n\t*  The Nobel Prizes awarded to 39 Caltech-affiliated individuals.',
  'Swiss Federal Institute of Technology, or ETH Zurich. ETH Zurich is a public research university located in Zurich, Switzerland. It was founded in 1855 as a polytechnic school, and became a federal institute of technology in 1909. ETH Zurich is known for its excellence in science, technology, engineering and mathematics (STEM), and has been ranked among the top universities in the world by various publications.\nETH Zurich has 16 academic departments and six interdisciplinary competence centers. ETH Zurich offers 23 bachelor\’s programs, 41 master\’s programs and individual doctoral programs1. ETH Zurich has a high student-faculty ratio of 14:1, and a large enrollment of about 10,000 undergraduates and 8,000 graduate students1. ETH Zurich students are known for their high academic achievement, innovation, and entrepreneurship.\nETH Zurich is also home to several research institutes and centers, such as the Swiss Federal Institute of Technology for Aquatic Science and Technology (Eawag), the Swiss Federal Institute for Forest, Snow and Landscape Research (WSL), the Swiss Federal Laboratories for Materials Science and Technology (Empa), and the Paul Scherrer Institute (PSI)1. ETH Zurich also operates several other research facilities, such as the Swiss Light Source (SLS), the Swiss National Supercomputing Centre (CSCS), and the Center for Proton Therapy (CPT).\n ETH Zurich has a distinguished history of scientific discovery and innovation. Some of the notable achievements by ETH Zurich faculty and alumni include: \n\t*  The development of general relativity by Albert Einstein\n\t*  The invention of the Geiger counter by Hans Geiger\n\t*  The discovery of LSD by Albert Hofmann\n\t*  The development of the World Wide Web by Tim Berners-Lee\n\t*  The invention of the scanning tunneling microscope by Gerd Binnig and Heinrich Rohrer\n\t*  The Nobel Prizes awarded to 21 ETH Zurich-affiliated individuals',
  'UCL (University College London). UCL is a public research university located in London, England. It was founded in 1826 as London University, and became a constituent college of the University of London in 1836. UCL is known for its excellence in arts, humanities, social sciences, and STEM, and has been ranked among the top universities in the world by various publications.\nUCL has 11 academic faculties and over 100 departments and institutes. UCL offers over 400 undergraduate programs, over 600 graduate taught programs, and over 200 graduate research programs1. UCL has a low student-faculty ratio of 10:1, and a large enrollment of about 18,000 undergraduates and 15,000 graduate students.UCL students are known for their high academic achievement, diversity, and activism.\nUCL is also home to several research institutes and centers, such as the UCL Institute of Education, the UCL Institute of Neurology, the UCL Institute of Ophthalmology, the UCL Cancer Institute, and the UCL Bartlett Faculty of the Built Environment.UCL also operates several other research facilities, such as the Mullard Space Science Laboratory, the UCL Observatory, and the UCL Ear Institute.\nUCL has a distinguished history of scientific discovery and innovation. Some of the notable achievements by UCL faculty and alumni include: \n\t*  The discovery of the structure of DNA by Francis Crick and Maurice Wilkins\n\t*  The development of anaesthesia by John Snow\n\t*  The invention of the telephone by Alexander Graham Bell\n\t*  The discovery of penicillin by Alexander Fleming\n\t*  The development of cognitive behavioural therapy by Aaron Beck\n\t*  The Nobel Prizes awarded to 32 UCL-affiliated individuals',
  'University of Chicago, or UChicago. UChicago is a private research university located in Chicago, Illinois. It was founded in 1890 by John D. Rockefeller and William Rainey Harper as a secular and non-denominational institution. UChicago is known for its excellence in arts, humanities, social sciences, and STEM, and has been ranked among the top universities in the world by various publications.\nUChicago has 11 academic faculties and over 100 departments and institutes. UChicago offers over 400 undergraduate programs, over 600 graduate taught programs, and over 200 graduate research programs1. UChicago has a low student-faculty ratio of 10:1, and a large enrollment of about 18,000 undergraduates and 15,000 graduate students1. UChicago students are known for their high academic achievement, diversity, and activism.\nUChicago is also home to several research institutes and centers, such as the UChicago Institute of Education, the UChicago Institute of Neurology, the UChicago Institute of Ophthalmology, the UChicago Cancer Institute, and the UChicago Bartlett Faculty of the Built Environment1. UChicago also operates several other research facilities, such as the Mullard Space Science Laboratory, the UChicago Observatory, and the UChicago Ear Institute1.\nUChicago has a distinguished history of scientific discovery and innovation. Some of the notable achievements by UChicago faculty and alumni include: \t\n*  The discovery of the structure of DNA by Francis Crick and Maurice Wilkins\t\n*  The development of anaesthesia by John Snow\t\n*  The invention of the telephone by Alexander Graham Bell\t\n*  The discovery of penicillin by Alexander Fleming\t\n*  The development of cognitive behavioural therapy by Aaron Beck\t\n*  The Nobel Prizes awarded to 32 UChicago-affiliated individuals',
  'National University of Singapore, or NUS. NUS is a public research university located in Singapore. It was founded in 1905 as a medical college, and became a comprehensive university in 1980. NUS is known for its excellence in science, technology, engineering, mathematics, and social sciences, and has been ranked among the top universities in the world by various publications.NUS has 17 faculties and schools across three campuses: Kent Ridge, Bukit Timah, and Outram. NUS offers over 400 undergraduate programs, over 600 graduate taught programs, and over 200 graduate research programs. NUS has a low student-faculty ratio of 6:1, and a large enrollment of about 28,000 undergraduates and 10,000 graduate students1. NUS students are known for their high academic achievement, diversity, and innovation.\nNUS is also home to several research institutes and centers, such as the NUS Centre for Quantum Technologies, the NUS Centre for Advanced 2D Materials, the NUS Institute of Systems Science, the NUS Yong Loo Lin School of Medicine, and the NUS Lee Kuan Yew School of Public Policy1. NUS also operates several other research facilities, such as the NUS High Performance Computing Centre, the NUS Synchrotron Radiation Facility, and the NUS Tropical Marine Science Institute.\nNUS has a distinguished history of scientific discovery and innovation. Some of the notable achievements by NUS faculty and alumni include:\t\n*  The development of perovskite solar cells by Henry Snaith\t\n*  The invention of the USB flash drive by Pua Khein-Seng\t\n*  The discovery of new forms of carbon by Andre Geim and Konstantin Novoselov\t\n*  The development of the Singapore sling cocktail by Ngiam Tong Boon\t\n*  The invention of the soundless piano by Tan Kah Kee\t\n*  The Nobel Prizes awarded to 7 NUS-affiliated individuals'
];

void main() => runApp(SplashScreenApp());

class SplashScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Screen App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mycolor1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "images/m.png",
              height: 400,
              width: 400,
            ),
            SizedBox(height: 50),
            Text(
              'version: 1.0.0+1',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'comfortaa',
                  fontWeight: FontWeight.bold,
                  color: mycolor3),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mycolor1,
        title: Text(
          'Top 10 University',
          style: TextStyle(
            fontFamily: "instagram",
          ),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text("Share the app"),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text("about"),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Text("Exit"),
                ),
              ];
            },
            onSelected: (value) {
              if (value == 0) {
                print("My account menu is selected.");
              } else if (value == 1) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => About()));
              } else if (value == 2) {
                FlutterExitApp.exitApp(iosForceExit: true);
              }
            },
          ),
        ],
      ),
      body: Container(
        color: mycolor3,
        child: ListView.builder(
          itemCount: Myimage.length,
          itemBuilder: (c, i) {
            return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  child: Myimage[i],
                  width: 50,
                  height: 80,
                  color: mycolor2,
                ),
              ),
              title: Text(
                Mylist[i],
                style: TextStyle(
                    fontFamily: 'comfortaa',
                    color: mycolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0),
              ),
              subtitle: Text(
                Mysubtitle[i],
                style: TextStyle(
                    fontFamily: 'comfortaa',
                    color: mycolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0),
              ),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondPage(
                            universityName: Mylist[i],
                            universityImage: Myimage[i],
                            universitySubtitle: Mysubtitle[i],
                            universityTitle: MyTitle[i],
                          )),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String universityName;
  final Image universityImage;
  final String universitySubtitle;
  final String universityTitle;

  SecondPage({
    required this.universityName,
    required this.universityImage,
    required this.universitySubtitle,
    required this.universityTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mycolor1,
        title: Text(
          'Top 10 University',
          style: TextStyle(
            fontFamily: "instagram",
          ),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text("Share the app"),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text("about"),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Text("Exit"),
                ),
              ];
            },
            onSelected: (value) {
              if (value == 0) {
                print("My account menu is selected.");
              } else if (value == 1) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => About()));
              } else if (value == 2) {
                FlutterExitApp.exitApp(iosForceExit: true);
              }
            },
          ),
        ],
      ),
      body: Container(
        color: mycolor3,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  height: 200,
                  width: 200,
                  color: mycolor2,
                  child: universityImage,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                universityName,
                style: TextStyle(
                  fontFamily: 'comfortaa',
                  color: mycolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                universitySubtitle,
                style: TextStyle(
                  fontFamily: 'comfortaa',
                  color: mycolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      universityTitle,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'comfortaa',
                        color: mycolor,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mycolor1,
        title: Text(
          'Top 10 University',
          style: TextStyle(
            fontFamily: "instagram",
          ),
        ),
      ),
      body: Container(
        color: mycolor3,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  height: 200,
                  width: 200,
                  color: mycolor2,
                  child: Image.asset('images/code.png'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Masoud Qaderi & Tariq",
                style: TextStyle(
                  fontFamily: 'comfortaa',
                  color: mycolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Wassa Organization Student ",
                style: TextStyle(
                  fontFamily: 'comfortaa',
                  color: mycolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Meet Masud Qaderi and Tarig - two talented students from Herat University and Wassa Organization who have recently created their first app, called Top 10 University in the World.This free app gives users access to valuable information about the top 10 universities in the world for informatics. With just a few taps, users can browse through the rankings, read detailed descriptions of each university, and learn about their cutting-edge research and programs.The app was developed over the course of three days, during which time Masud and Tarig faced a number of challenges. However, they persevered and were able to produce a high-quality product that showcases their impressive programming skills.Overall, \'Top 10 University in the World\' is an excellent resource for anyone interested in pursuing a career in informatics or simply looking to expand their knowledge of the field. Congratulations to Masud and Tarig on this impressive achievement!",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: 'comfortaa',
                        color: mycolor,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
