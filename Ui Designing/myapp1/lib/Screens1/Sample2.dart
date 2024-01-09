import 'package:flutter/material.dart';

class Sample2 extends StatefulWidget {
  const Sample2({super.key});

  @override
  State<Sample2> createState() => _Sample2State();
}

class _Sample2State extends State<Sample2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.red
                )
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10,left: 5,right: 5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.cyan
                      )
                    ),
                    child: Column(
                      children: [
                        Container(
                          // height: 80,
                          width: MediaQuery.of(context).size.width/2,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.black
                            )
                          ),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black
                                  )
                                ),
                                margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                                padding: EdgeInsets.all(8),
                                child: Text("Pan Cake",style: TextStyle(fontSize: 24),),
                              ),
                                                          Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black
                                  )
                                ),
                                margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                                padding: EdgeInsets.all(8),
                                child: Text("""
                                          Knowing how to write a paragraph is incredibly important. It’s a basic aspect of writing, and it is something that everyone should know how to do. There is a specific structure that you have to follow when you’re writing a paragraph. This structure helps make it easier for the reader to understand what is going on. Through writing good paragraphs, a person can communicate a lot better through their writing.
        
                                        """)
                              ),
                                                          Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black
                                  )
                                ),
                                margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                                padding: EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(Icons.star),
                                          Icon(Icons.star),
                                          Icon(Icons.star),
                                          Icon(Icons.star),
                                          Icon(Icons.star),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Text("170  Reviewes"),
                                    )
                                  ],
                                ),
                              ),
                                                        Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black
                                  )
                                ),
                                margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                                padding: EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Icon(Icons.menu_book),
                                          Text("PREP :"),
                                          Text("25 min")
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Icon(Icons.menu_book),
                                          Text("PREP :"),
                                          Text("25 min")
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Icon(Icons.menu_book),
                                          Text("PREP :"),
                                          Text("25 min")
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ),
        
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width / 2.1,
                    decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage("https://plus.unsplash.com/premium_photo-1672846027109-e2c91500afef?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHN0YWNrfGVufDB8fDB8fHww",),fit: BoxFit.cover)
                    ),
                    
                  )
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}