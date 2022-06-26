import 'package:cu_apps/data/repository/members.network.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IctCellView extends StatefulWidget {
  const IctCellView({Key? key}) : super(key: key);

  @override
  State<IctCellView> createState() => _IctCellViewState();
}

class _IctCellViewState extends State<IctCellView> {
  GetMembers getFromApi = GetMembers();

  //Function for Making Call

////

  List members = [];

  @override
  void initState() {
    super.initState();
    getMembers();
  }

  getMembers() async {
    members = await getFromApi.getMembers();
    print(members);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          child: Column(
        children: [
          ...members.map((member) {
            return Card(
                margin: EdgeInsets.all(9),
                elevation: .8,
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 130,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(member['imgUrl']),
                        backgroundColor: Colors.brown.shade800,
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.user,
                                size: 15,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(member['name'],
                                  style: TextStyle(
                                      fontFamily: 'Nikosh',
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.box,
                                size: 15,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(member['designation'],
                                  style: TextStyle(
                                    fontFamily: 'Nikosh',
                                    fontSize: 15.0,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.phone,
                                size: 15,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                member['phone'],
                                style: TextStyle(
                                  fontFamily: 'Nikosh',
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.email,
                                size: 15,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Container(
                                child: Text(member['email'],
                                    style: TextStyle(
                                      fontFamily: 'Nikosh',
                                      fontSize: 12.0,
                                    )),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ));
          })
        ],
      )),
    ));
  }
}
