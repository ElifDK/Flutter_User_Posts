import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Profile()
  ));
}


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  int postCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('User Profile',
        style: TextStyle(fontSize: 24,
        fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body:
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.all(20),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/img.png'),
                ),),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Text('800',
                      style: TextStyle(
                        fontSize: 20,
                      ),),
                  ),
                  Text('Follower',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),)
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Text('650',
                      style: TextStyle(
                        fontSize: 20,
                      ),),
                  ),
                  Text('Following',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),)
                ],
              ),
              const SizedBox(width: 8,),

            ],
          ),
          Divider(height: 30,
              color:Colors.black),
          Text('$postCount',
          style: TextStyle(fontSize: 24),),
          Divider(height: 30,
              color:Colors.black),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            postCount++;
          });
        },
        child: Icon(Icons.add),),
    );
  }
}