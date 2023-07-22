import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyApp()
));

class MyApp extends StatelessWidget {

@override
Widget build(BuildContext context) {
  return Scaffold(
      body: Container(
        //padding: const EdgeInsets.fromLTRB(275, 60, 275, 500),
        decoration: const BoxDecoration(color: Color.fromRGBO(164, 164, 164, 0.4)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Colors', style: TextStyle(color:Colors.black, fontSize: 40), textDirection: TextDirection.ltr,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(550, 125)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    elevation: MaterialStateProperty.resolveWith<double>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered))
                          return 5.0;
                          return 0.0;
                      }
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => RedScreen(),
                    ),
                  );
              },
                  child: const Text("Red")
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(550, 125)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    elevation: MaterialStateProperty.resolveWith<double>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered))
                          return 5.0;
                          return 0.0;
                      }
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => BlueScreen(),
                    ),
                  );
              },
                  child: const Text("Blue")
              )
              ],
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(1150, 125)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    elevation: MaterialStateProperty.resolveWith<double>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered))
                          return 5.0;
                          return 0.0;
                      }
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => GreenScreen(),
                    ),
                  );
              },
                  child: const Text("Green")
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(550, 125)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    elevation: MaterialStateProperty.resolveWith<double>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered))
                          return 5.0;
                          return 0.0;
                      }
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => BlackScreen(),
                    ),
                  );
              },
                  child: const Text("Black")
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(550, 125)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
                    elevation: MaterialStateProperty.resolveWith<double>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered))
                          return 5.0;
                          return 0.0;
                      }
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => YellowScreen(),
                    ),
                  );
              },
                  child: const Text("Yellow")
              )
              ],
              )
          ],
        )
        )
      );
}

}

class AppLayout extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;

  const AppLayout({Key? key, required this.child, required this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: backgroundColor,
      body: child
    );
  }
}


class RedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return AppLayout(
      backgroundColor: Colors.red,
      child: Center(child: Text('Red Color', style: TextStyle(fontSize: 80, color: Colors.white)))
    );
  }
}

class BlueScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return AppLayout(
      backgroundColor: Colors.blue,
      child: Center(child: Text('Blue Color', style: TextStyle(fontSize: 80, color: Colors.white)))
    );
  }
}

class GreenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return AppLayout(
      backgroundColor: Colors.green,
      child: Center(child: Text('Green Color', style: TextStyle(fontSize: 80, color: Colors.white)))
    );
  }
}

class BlackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return AppLayout(
      backgroundColor: Colors.black,
      child: Center(child: Text('Black Color', style: TextStyle(fontSize: 80, color: Colors.white)))
    );
  }
}

class YellowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return AppLayout(
      backgroundColor: Colors.yellow,
      child: Center(child: Text('Yellow Color', style: TextStyle(fontSize: 80, color: Colors.white)))
    );
  }
}

//fix RBGO color, LTRB