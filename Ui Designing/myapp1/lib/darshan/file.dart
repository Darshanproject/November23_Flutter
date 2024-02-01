import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  TextEditingController _urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Display App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _urlController,
              decoration: InputDecoration(
                labelText: 'Enter Image URL',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageDisplayPage(url: _urlController.text),
                  ),
                );
              },
              child: Text('Show Image'),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageDisplayPage extends StatefulWidget {
  final String url;

  ImageDisplayPage({required this.url});

  @override
  _ImageDisplayPageState createState() => _ImageDisplayPageState();
}

class _ImageDisplayPageState extends State<ImageDisplayPage> {
  List<String> imageUrlList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Display Page'),
      ),
      body: Column(
        children: [
          GridView.extent(
            maxCrossAxisExtent: 150,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            padding: EdgeInsets.all(8),
            children: [
              Image.network(widget.url),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                imageUrlList.add(widget.url);
              });
            },
            child: Text('Add to List'),
          ),
          SizedBox(height: 20),
          Text(
            'Image URL List:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: imageUrlList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(imageUrlList[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
