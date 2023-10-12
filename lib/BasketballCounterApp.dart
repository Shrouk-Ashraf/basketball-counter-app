import 'package:flutter/material.dart';


class BasketballCounterApp extends StatefulWidget {
  const BasketballCounterApp({Key? key}) : super(key: key);

  @override
  _BasketballCounterAppState createState() => _BasketballCounterAppState();
}

class _BasketballCounterAppState extends State<BasketballCounterApp> {

  int teamAScore =0;
  int teamBScore =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Basketball Counter App"
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text("Team A",style: TextStyle(
                      fontSize: 45,),
                    ),
                    Container(
                      width: 150,
                      height: 200,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text("$teamAScore", style :TextStyle(
                          fontSize: 150)
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150,50),

                      ),
                      onPressed: (){
                        setState(() {
                          teamAScore++;
                        });
                      },
                      child: Text("Add 1 point",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                        ),),
                    ),
                    const SizedBox(height: 15,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150,50),

                      ),
                      onPressed: (){
                        setState(() {
                          teamAScore+=2;
                        });
                      },
                      child: Text("Add 2 points",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                        ),),
                    ),
                    const SizedBox(height: 15,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150,50),

                      ),
                      onPressed: (){
                        setState(() {
                          teamAScore+=3;
                        });
                      },
                      child: Text("Add 3 points",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                        ),),
                    )
                  ],
                ),
                const SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 30,
                    endIndent: 2,),
                ),
                Column(
                  children: [
                    const Text("Team B",style: TextStyle(
                      fontSize: 45,),
                    ),
                    Container(
                      width: 150,
                      height: 200,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text("$teamBScore", style :TextStyle(
                            fontSize: 150)
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150,50),

                      ),
                      onPressed: (){
                        setState(() {
                          teamBScore++;
                        });
                      },
                      child: Text("Add 1 point",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                        ),),
                    ),
                    const SizedBox(height: 15,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150,50),

                      ),
                      onPressed: (){
                        setState(() {
                          teamBScore+=2;
                        });
                      },
                      child: Text("Add 2 points",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                        ),),
                    ),
                    const SizedBox(height: 15,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150,50),

                      ),
                      onPressed: (){
                        setState(() {
                          teamBScore+=3;
                        });
                      },
                      child: Text("Add 3 points",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                        ),),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 30,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              minimumSize: Size(150,50),

            ),
            onPressed: (){
              setState(() {
                teamAScore =0;
                teamBScore =0;
              });
            },
            child: Text("Reset",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18
              ),),
          ),
        ],
      ),
    );
  }
}


