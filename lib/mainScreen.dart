import 'package:flutter/material.dart';
import 'package:internstage1/webViewContainer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height *0.45,
            width: size.width,
            decoration: const BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0)
                )
            ),
            padding: EdgeInsets.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CircleAvatar(
                    radius: 100,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Image.network('https://ca.slack-edge.com/T05FFAA91JP-U05RDC2MJLC-25d1e5d43dc5-512')),
                  ),
                ),

                Expanded(
                  child: Container(
                    width: size.width,
                    child: const Center(
                      child: Text('Slack Name: Badmus Musa',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const WebViewContainer()));
              },
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                  elevation: 5.0
              ),
              child: const Text('Open GitHub',
                  style: TextStyle(
                      fontSize: 20
                  )),
            ),
          )
        ],
      )
    );

  }
}
