import 'package:flutter/material.dart';
import 'package:listviewcardviewflutter/data.dart';

class Dashboard extends StatelessWidget {
  var employeeData = EmployeeData.getData;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: ListView.builder(
// scrollDirection: Axis.horizontal,
                    itemCount: employeeData.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        height: 220,
                        width: double.maxFinite,
                        child: Card(
                          elevation: 5,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                    width: 2.0,
                                    color: employeeData[index]["iconColor"]),
                              ),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(7),
                              child: Stack(children: <Widget>[
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Stack(
                                    children: <Widget>[
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 5),
                                          child: Column(
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Container(
                                                    child: Text(
                                                        employeeData[index]
                                                                ['name'] ??
                                                            '-'),
                                                  ),
                                                  SizedBox(
                                                    width: 40,
                                                  ),
                                                  Container(
                                                    child: Text(
                                                        employeeData[index]
                                                                ['salary'] ??
                                                            '-'),
                                                  ),
                                                  SizedBox(
                                                    width: 40,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 40,
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Container(
                                                    child: Text(
                                                        employeeData[index]
                                                                ['hike'] ??
                                                            '-'),
                                                  ),
                                                  SizedBox(
                                                    width: 40,
                                                  ),
                                                  Container(
                                                    child: Text(employeeData[
                                                                index]
                                                            ['changeValue'] ??
                                                        '-'),
                                                  ),
                                                  SizedBox(
                                                    width: 40,
                                                  ),
                                                  Container(
                                                    child: Text(
                                                        employeeData[index]
                                                                ['value'] ??
                                                            '-'),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 60,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    child: RaisedButton(
                                                      child:
                                                          Text('See Details'),
                                                      onPressed: () {
                                                        print(
                                                            'Button has been printed for index ${employeeData[index]}');
                                                      },
                                                      onLongPress: () {
                                                        final snackBar =
                                                            SnackBar(
                                                          content: Text(
                                                              'Hey this is a snak bar'),
                                                          action:
                                                              SnackBarAction(
                                                            label: 'LongPress',
                                                            onPressed: () {},
                                                          ),
                                                        );
                                                        Scaffold.of(context)
                                                            .showSnackBar(
                                                                snackBar);
                                                      },
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
