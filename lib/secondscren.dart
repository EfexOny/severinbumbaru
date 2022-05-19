import 'package:flutter/material.dart';
import 'infoconst/data.dart';

class FacultateDetail extends StatelessWidget {
  final FacultateDataModel facultateDataModel;

  const FacultateDetail({Key? key, required this.facultateDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(facultateDataModel.name),),
      body: Center(
        child: Card(
          elevation: 50,
          shadowColor: Colors.greenAccent[100],
          child:SizedBox(
            width: 300,
            height: 560,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green[500],
                    radius: 108,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(facultateDataModel.imagine),
                      radius: 100,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    facultateDataModel.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[500],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    facultateDataModel.desc,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[500],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Specializari:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[500],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    facultateDataModel.specialities,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[500],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(width: 100,
                  child: RaisedButton(
                    onPressed: null,
                    color: Colors.green,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: [
                          Icon(Icons.touch_app , color: Colors.white,),
                          Text(
                            'Visit',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ),
                ],
              ),
              ),
          )
        )
      )
    );
  }
}
