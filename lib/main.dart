import 'package:flutter/material.dart';
import 'package:ual/secondscren.dart';
import 'infoconst/data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GHID',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static List<String> descriere = [
    "În prezent, Facultatea de Inginerie din cadrul Universității “Dunărea de Jos” din Galați este cel mai important formator regional al specialiștilor în domeniile de licență Inginerie mecanică, Inginerie industrială, Ingineria materialelor, Ingineria autovehiculelor, Ingineria mediului.",
    "Facultatea de Arhitectură Navală, unică în România, cu o tradiţie de peste șase decenii în învăţământul superior, are ca principal criteriu de performanţă pregătirea arhitecţilor navali recunoscuţi pe plan mondial, pentru o carieră pe termen lung, motivantă şi fascinantă!",
    "Facultatea de Automatică, Calculatoare, Inginerie Electrică şi Electronică oferă studii de specialitate în următoarele domenii de vârf ale ingineriei cu mare căutare pe piaţa de muncă: Automatică, Calculatoare, Inginerie Electrică şi Electronică.",
    "Facultatea de Litere din Universitatea „Dunărea de Jos”din Galaţi reprezintă una dintre cele mai importante instituţii cu profil filologic din România, cu o tradiţie de peste cincizeci de ani în organizarea programelor de studii universitare."
    "În cadrul Facultăţii de Litere au fost acreditate şi sunt organizate în prezent şapte programe de licenţă, cinci programe de masterat şi studii de doctorat.",
    "Facultatea de Știința și Ingineria Alimentelor se numără printre cele mai prestigioase facultăți din cadrul Universității „Dunărea de Jos” din Galați, fiind recunoscută atât la nivel național, cât și internațional, pentru performanțele la nivel academic și în activitatea de cercetare, dezvoltare și inovare."
  ];

  static List<String> faculty = [
    "Facultatea de Inginerie",
    "Facultatea de Arhitectură Navală",
    "Facultatea de Automatică Si Calculatoare",
    "Facultatea de Științe și Ingineria Alimentelor",
    "Facultatea de Medicină și Farmacie"
  ];

  static List<String> specialities = [
    "Inginerie",
    "Arhitectura",
    "IT",
    "Inginerie alimentara",
    "Medicina",
  ];

  static List url = [
    'https://i.ibb.co/GJ5Ct2n/logo-inginerie.jpg',
    'https://i.ibb.co/WkMZg2w/Arhitectura-navala.jpg',
    'https://i.ibb.co/71v6wXZ/Automatica-si-calculatoare.png',
    'https://i.ibb.co/ck3HMFT/stiinte-de-mediu.jpg',
    'https://i.ibb.co/KjXSvZ0/Medicina.png'
  ];

  static List orase = [
  "Alba Iulia",
  "Arad",
  "Bacau",
  "Brasov",
  "Bucuresti",
  ];

  final List<FacultateDataModel> Facultatedata = List.generate(
      faculty.length,
      (index) => FacultateDataModel('${faculty[index]}', '${orase[index]}',
          '${specialities[index]}', '${url[index]}', '${descriere[index]}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GHID'),
        ),
        body: ListView.builder(
            itemCount: Facultatedata.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(Facultatedata[index].name),
                  subtitle: Text(Facultatedata[index].city),
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.network(Facultatedata[index].imagine),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FacultateDetail(
                              facultateDataModel: Facultatedata[index],
                            )
                         )
                      );
                  },
                ),
              );
            }
            )
      );
  }
}
