import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange, accentColor: Colors.orange),
      home: new Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter dersleri",
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("fab tıklandı");
          },
          child: Icon(
            Icons.wifi_protected_setup,
            color: Colors.white,
          ),
        ),
        body: Column(
          children: [
            Text(
              "resim ve buton türleri",
              style: TextStyle(fontSize: 24,color: Colors.orange, fontWeight: FontWeight.bold),
            ),
            IntrinsicHeight(
              child: //nesnelerin boylarını eşitliyo
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: // boyuta ekrana göre ölçeklendiriyo
                    Container(
                      margin:
                      EdgeInsets.all(1), //etrafı ile arasına boşluk koyuyo
                      color: Colors.orange,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/images/icon.png"),
                          Text("asset image")
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(1),
                      color: Colors.orange,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.network(
                              "https://images.hdqwalls.com/wallpapers/small-memory-lp.jpg"),
                          Text("network image")
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(1),
                      color: Colors.orange,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://images.hdqwalls.com/wallpapers/small-memory-lp.jpg"),
                            backgroundColor: Colors.purple,
                            foregroundColor: Colors.orange,
                            radius: 40,
                          ),
                          Text("circle avatar")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            IntrinsicHeight(
              child: //nesnelerin boylarını eşitliyo
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: // boyuta ekrana göre ölçeklendiriyo
                    Container(
                      margin:
                      EdgeInsets.all(1), //etrafı ile arasına boşluk koyuyo
                      color: Colors.orange,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FadeInImage.assetNetwork(placeholder: "assets/images/loading.gif", image: "https://images.hdqwalls.com/wallpapers/small-memory-lp.jpg"),
                          Text("feed in image")
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(1), //etrafı ile arasına boşluk koyuyo
                      color: Colors.purple,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlutterLogo(size: 60,textColor: Colors.orange,style: FlutterLogoStyle.horizontal,),
                          Text("flutter logo")
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child:
                    Container(
                      margin:
                      EdgeInsets.all(1), //etrafı ile arasına boşluk koyuyo
                      color: Colors.purple,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(child: Placeholder(
                            color: Colors.red,
                            strokeWidth: 2,
                          ),
                          ),
                          Text("Placeholder widget")
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    ),
  );
}
