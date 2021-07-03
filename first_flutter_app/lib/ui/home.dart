

// /import 'package:first_flutter_app/madel/movie.dart';
import 'package:first_flutter_app/madel/question1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//
// class MovieListView extends StatelessWidget {
//   final List<Movie> movieList = Movie.getMovies();
//
//   final List movies = [
//     "Titanic",
//     "Blade Runner",
//     "Rambo",
//     "The Avengers",
//     "Avatar",
//     "I Am Legend",
//     "300",
//     "The Wolf of Wall Street",
//     "Interstellar",
//     "Game of Thrones",
//     "Vikings"
//   ];
//
//
//   @override
//   Widget build(BuildContext context) {
//   return Scaffold(
//   appBar: AppBar(
//   title: Text("Moveis"),
//   backgroundColor: Colors.blueGrey,
//
//   ),
//   backgroundColor: Colors.blueGrey,
//   body: ListView.builder(
//   itemCount: movieList.length,
//   itemBuilder:(BuildContext context, int index) {
//   return Card(
//     elevation: 4.5,
//   color: Colors.white,
//   child: ListTile(
//     leading: CircleAvatar(
//       child: Container(
//         decoration: BoxDecoration(
//           color:Colors.blue,
//             borderRadius: BorderRadius.circular(13.9)
//         ),
//         child: Text("${movieList[0].title}"),
//       ),
//     ),
//   trailing: Text("..."),
//   title:Text(movies.elementAt(index)),
//     subtitle: Text(movieList[index].title),
//     onTap:() => {
//       Navigator.push(context, MaterialPageRoute(
//           builder: (context) => MovieListViewDetails(movieName: movies.elementAt(index),)))
//
//     },
//
//   ),
//   );
//   },),
//   );
//   }
// }
//
// //New route(screen or name)
// class MovieListViewDetails extends StatelessWidget {
//
//   final String movieName;
//
//   const MovieListViewDetails({Key? key, required this.movieName}) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Movies" ),
//         backgroundColor: Colors.blueGrey.shade900,
//       ),
//       body: Center(
//         child: RaisedButton(
//           child: Text("Go back ${this.movieName}"),
//           onPressed: () {
//             Navigator.pop(context);
//
//           },
//         ),
//       ),
//     );
//   }
// }
//



class TabsExample extends StatelessWidget {
  const TabsExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      const Center(child: Icon(Icons.cloud, size: 64.0, color: Colors.teal)),
      const Center(child: Icon(Icons.alarm, size: 64.0, color: Colors.cyan)),
      const Center(child: Icon(Icons.forum, size: 64.0, color: Colors.blue)),
    ];
    final _kTabs = <Tab>[
      const Tab(icon: Icon(Icons.cloud), text: 'Tab1'),
      const Tab(icon: Icon(Icons.alarm), text: 'Tab2'),
      const Tab(icon: Icon(Icons.forum), text: 'Tab3'),
    ];
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('appbar title'),
          backgroundColor: Colors.cyan,
          // If TabController controller is not provided, then a
          // DefaultTabController ancestor must be provided instead.
          // Another way is to use a self-defined controller, c.f. "Bottom tab
          // bar" example.
          bottom: TabBar(
            tabs: _kTabs,
          ),
        ),
        body: TabBarView(
          children: _kTabPages,
        ),
      ),
    );
  }
}



class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {

  int _currentQuestionIndex = 0;

  List questionBank = [
    Question.name("The U.S. Declaration of Independence was adapted in 1776.",true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("True Citizen"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor:Colors.blueGrey,
      body:Container(
        child: Column(
          children: [
            Center(
              child: Image.asset("images/flag.png",
              width: 250,
              height: 180,),
            ),


            Container(
              decoration: BoxDecoration(
                color:Colors.transparent,
                borderRadius: BorderRadius.circular(14.4),
                border:Border.all(
                  color:Colors.blueGrey.shade400, style: BorderStyle.solid
                )
                ),

              height: 120.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(questionBank[0].questionText, style: TextStyle(
                  fontSize: 16.9,
                  color: Colors.white,
                )),
              ),


            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(onPressed: () => _checkAnswer(),
                color: Colors.blueGrey.shade900,
                    child: Text("TRUE", style: TextStyle(color:Colors.white),),),

                RaisedButton(onPressed: () => _checkAnswer(),
                  color: Colors.blueGrey.shade900,
                  child: Text("FALSE", style: TextStyle(color:Colors.white),),),

                RaisedButton(onPressed: () => _nextQuestion(),
                  color: Colors.blueGrey.shade900,
                  child: Icon(Icons.arrow_forward, color:Colors.white),),

              ],
            ),
            Spacer(),
          ],

        ),

      )
    );
  }

  _checkAnswer() {

  }

  _nextQuestion() {}
}




class BillSplitter extends StatefulWidget {
  const BillSplitter({Key? key}) : super(key: key);

  @override
  _BillSplitterState createState() => _BillSplitterState();
}

class _BillSplitterState extends State<BillSplitter> {

  int _tipPercentage = 0;
  int _personCounter = 1;
  double _billAmount = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        margin:EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.1),
        alignment: Alignment.center,
        color:Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20.5),
          children: [
            Container(
              width:150,
              height:150,
              decoration:BoxDecoration(
                color:Colors.purpleAccent.shade100,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child:Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Total per Person", style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15.0,
                      color:Colors.purpleAccent.shade400
                    ),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(" \$ ${calculateTotalPerPerson(_billAmount, _personCounter, _tipPercentage)}", style: TextStyle(
                        fontSize: 34.9,
                        fontWeight: FontWeight.bold,
                        color:Colors.purpleAccent.shade400
                      ),),
                    ),
                  ],
                ),
              )
            ),
            Container(
              margin: EdgeInsets.only(top:20.0),
              padding:EdgeInsets.all(12.0),
              decoration:BoxDecoration(
                color:Colors.transparent,
                border:Border.all(
                  color: Colors.blueGrey.shade100,
                  style:BorderStyle.solid
                ),
                borderRadius:BorderRadius.circular(12.0)
              ),
              child:Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.numberWithOptions(decimal:true),
                    style:TextStyle(color:Colors.purpleAccent),
                    decoration: InputDecoration(
                        prefixText:"Bill Amount",
                      prefixIcon:Icon(Icons.attach_money),
                    ),
                    onChanged: (String value) {
                      try{
                          _billAmount = double.parse(value);

                      }catch(exception) {
                        _billAmount = 0.0;

                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Split", style:TextStyle(
                        color:Colors.grey.shade700
                      ),),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                              setState((){
                                if (_personCounter > 1){
                                  _personCounter--;
                                }else {
                                  //do nothing
                                }

                              });

                            },
                            child: Container(
                              width: 40.0,
                                height:40.0,
                                margin:EdgeInsets.all(10.0),
                                decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0),
                                  color:Colors.purpleAccent.shade100

                                ),
                              child: Center(
                                child: Text(
                                  "-", style:TextStyle(
                                  color:Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0
                                ),
                                ),
                              ),
                            ),
                          ),
                          Text("$_personCounter", style: TextStyle(
                            color:Colors.purpleAccent.shade100,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),),

                          InkWell(
                            onTap:() {
                              setState(() {
                                _personCounter++;
                              });
                            },
                            child: Container(
                              width: 40.0,
                              height:40.0,
                              margin:EdgeInsets.all(10.0),
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0),
                                  color:Colors.purpleAccent.shade100
                            ),
                              child:Center(
                                child: Text("+", style:TextStyle(
                                  color:Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                ),),
                              ),

                          ),
                          ),




                        ],
                      )
                    ],
                  ),

                  //Tip
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tip", style: TextStyle(
                        color:Colors.grey,

                      ),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("\$ ${ (calculateTotalTip(_billAmount,
                            _personCounter, _tipPercentage)).toStringAsFixed(2)}", style: TextStyle(
                          color:Colors.purpleAccent.shade100,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0
                        ),),
                      ),
                    ],
                  ),
                  //Slider
                  Column(
                    children: [
                      Text("$_tipPercentage %", style: TextStyle(
                        color:Colors.purpleAccent.shade100,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold
                      )),

                      Slider(
                          min: 0,
                          max:100,
                          activeColor: Colors.purpleAccent.shade100,
                          inactiveColor: Colors.grey,
                          divisions:10, //optional
                          value: _tipPercentage.toDouble(),
                          onChanged: (double newvalue) {
                              setState(() {
                                _tipPercentage = newvalue.round();

                              });
                          })
                    ],
                  )

                ],
              )
            )
          ],
        ),
      ),
    );
  }

  calculateTotalPerPerson(double billAmount, int splitBy, int tipPercentage) {

    var totalPerPerson = (calculateTotalTip(billAmount, splitBy, tipPercentage) + billAmount)/splitBy;

    return totalPerPerson.toStringAsFixed(2);
  }

  calculateTotalTip(double billAmount, int splitBy, int tipPercentage) {
    var totalTip = 0.0;

    if (billAmount <0 || billAmount.toString().isEmpty || billAmount == null) {
        // no go!
        }else {
       totalTip = (billAmount * tipPercentage) / 100;
    }

    return totalTip;

  }

}




class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {

  int _index = 0;

  List quotes= [
    "aaa",
    "bbb",
    "ccc",
    "ddd",
    "eee"

  ];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Container(
                    width:350,
                    height:200,
                    margin:EdgeInsets.all(30.0),
                    decoration:BoxDecoration(
                      color:Colors.transparent,
                      borderRadius: BorderRadius.circular(14.5),

                    ),
                    child: Center(child: Text(quotes[_index % quotes.length],
                      style:TextStyle(
                        color:Colors.grey,
                        fontStyle: FontStyle.italic
                      )))),
              ),
            ),

            Divider(thickness: 1.3,),
            Padding(
                padding:const EdgeInsets.only(top:18.0),
                child:FlatButton.icon(
                    onPressed: _showQuote,
                    color:Colors.greenAccent,
                    icon:Icon(Icons.wb_sunny),
                    label: Text("Inspire me!", style:TextStyle(
                      fontSize: 18.8,
                      color:Colors.white,
                    )))

            ),
            Spacer()
          ],

        )
      )
    );
  }

  void _showQuote() {
    //increment index/counter by1
    setState(() {
      _index += 1;
    });

  }
}




class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title:Text("BizCard"),
          centerTitle: true,

        ),
        backgroundColor:Colors.redAccent,
        body:Container(
          alignment: Alignment.center,
          child:Stack(
            alignment: Alignment.topCenter,
            children:<Widget>[
              _getCart(),
              _getAvatar()
            ],
          ),
        ),

    );
  }

  Container _getCart() {
    return Container(
      width:350,
      height:200,
      margin:EdgeInsets.all(50.0),
      decoration:BoxDecoration(
        color:Colors.pinkAccent,
        borderRadius:BorderRadius.circular(8)
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Maki Yoshida",
            style:TextStyle(fontSize:20.9,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
          Text("makiyoshida.com"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_outline),
              Text("T:@build13F")
            ],
          ),
        ],
      )
    );
  }

  Container _getAvatar() {
    return Container(
      width:100,
      height:100,
      decoration:BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border:Border.all(color:Colors.redAccent,width:1.2),
        image:DecorationImage(image: NetworkImage("https://picsum.photos/200/300"),
          fit:BoxFit.cover),

      ),
    );

  }
}




class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({Key? key}) : super(key: key);

  _tapButton() {
    debugPrint("Tappled Button");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Scaffold"),
        centerTitle:true,
        backgroundColor:Colors.amberAccent.shade700,
        actions:<Widget>[
          IconButton(icon: Icon(Icons.email), onPressed: () => debugPrint("EmailTapped!") ),
          IconButton(onPressed: _tapButton, icon: Icon(Icons.access_alarms))
        ],



      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        child: Icon(Icons.call_missed),
        onPressed: () => debugPrint("Hello"),
      ),


      bottomNavigationBar:BottomNavigationBar(items: [
        BottomNavigationBarItem(icon:Icon(Icons.account_circle), title:Text("First")),
        BottomNavigationBarItem(icon:Icon(Icons.ac_unit), title:Text("Second")),
        BottomNavigationBarItem(icon:Icon(Icons.access_alarm), title:Text("third")),
      ],onTap:(int index) => debugPrint("Tapped item : $index") ,),

      backgroundColor:Colors.redAccent.shade100,
      body:Container(
        alignment:Alignment.center,
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:<Widget>[
            CustomButton()

            // InkWell(
            //   child:Text("Tap me!",
            //    style:TextStyle(fontSize:23.4),),
            //
            //   onTap: () => debugPrint("Tapped...."),
            //
            // )

          ],
        ),
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        final snackBar = SnackBar(content: Text("Hello Again!"),
        backgroundColor: Colors.orange,);

        Scaffold.of(context).showSnackBar(snackBar);
      },

      child:Container(
        padding:EdgeInsets.all(10.0),
         decoration:BoxDecoration(
           color:Colors.pinkAccent,
            borderRadius:BorderRadius.circular(8.0)
         ),

        child:Text("Button"),

      ),

    );
  }
}



class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.orange,
      child: Center(
          child: Text(
              "Hello Flutter",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 23.4,
                  fontStyle: FontStyle.italic
              ),
          )),
    );

    // return Center(
    //   child:Text("Hello Flutter", textDirection: TextDirection.ltr,),
    // );
  }
}