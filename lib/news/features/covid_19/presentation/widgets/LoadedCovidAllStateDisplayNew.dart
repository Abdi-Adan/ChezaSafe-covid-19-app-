import 'package:covid_tracker/utils/margin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../domain/entities/covid_all.dart';

class LoadedCovidAllStateDisplayNew extends StatelessWidget {
  final CovidAll covidAll;

  LoadedCovidAllStateDisplayNew({@required this.covidAll});

  final double wid = double.infinity;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: <Widget>[
              WorldTotalCard(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3.7,
                  width: wid,
                  child: Card(
                    color: Colors.blueGrey,
                    margin: EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Total'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Cases'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              bottom: 5,
                            ),
                          ),
                          Text(
                            this.covidAll.getCases.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3.7,
                  width: wid,
                  child: Card(
                    color: Colors.red,
                    margin: EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Total'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Deaths'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              bottom: 5,
                            ),
                          ),
                          Text(
                            this.covidAll.getDeaths.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3.7,
                  width: wid,
                  child: Card(
                    color: Colors.green,
                    margin: EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Total'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Recovered'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              bottom: 5,
                            ),
                          ),
                          Text(
                            this.covidAll.getRecovered.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3.7,
                  width: wid,
                  child: Card(
                    color: Colors.orange,
                    margin: EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Active'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Cases'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              bottom: 5,
                            ),
                          ),
                          Text(
                            (this.covidAll.getCases -
                                    this.covidAll.getDeaths -
                                    this.covidAll.getRecovered)
                                .toString(),
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}


class WorldTotalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3.7,
                margin: EdgeInsets.symmetric(horizontal: 25),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.18),
                        blurRadius: 20,
                        spreadRadius: 3.5,
                        offset: Offset(0, 13)),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 40,
                          margin: EdgeInsets.all(15),
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 17),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(5)),
                          child: RichText(
                              text: TextSpan(
                            text: "cardTitle Test ".toUpperCase(),
                            style: GoogleFonts.cabin(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "test number",
                                style: GoogleFonts.cabin(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 29),
                                ),
                              ),
                              const YMargin(5),
                              Text(
                                 "Deaths",
                                style: GoogleFonts.cabin(
                                  textStyle: TextStyle(
                                      color: Colors.white54,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 17),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        // comment style tiny box
        Align(
          alignment: Alignment.bottomRight,
          child: Column(
            children: <Widget>[
              const YMargin(115),
              Container(
                width: 58,
                height: 58,
                margin: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 30,
                        spreadRadius: 3.5,
                        offset: Offset(0, 13)),
                  ],
                ),
                child: Icon(Icons.arrow_upward, color: Colors.red, size: 15),
              ),
            ],
          ),
        )
      ],
    );
  }
}