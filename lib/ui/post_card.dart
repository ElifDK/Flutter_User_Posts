import 'package:flutter/material.dart';
import 'package:user_posts/model/post.dart';

class PostCard extends StatelessWidget {

  final Post post;
  const PostCard ({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(post.text,
            style: TextStyle(fontSize: 20,
            fontWeight: FontWeight.w500),),
            Row (
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(post.date,
                style: TextStyle(fontSize: 14,
                fontWeight: FontWeight.w300),),
                Spacer(),
                Icon(Icons.thumb_up,
                size: 14,
                color: Colors.green,),
                Text(post.likes.toString(),
                  style: TextStyle(fontSize: 14,
                      fontWeight: FontWeight.w300),),
                SizedBox(width: 8,),
                Icon(Icons.comment,
                  size: 14,
                  color: Colors.blue,),
                Text(post.comments.toString(),
                  style: TextStyle(fontSize: 14,
                      fontWeight: FontWeight.w300),),
                IconButton(onPressed: (){}, icon: Icon(Icons.delete, size: 14, color:Colors.red))
              ],
            )

          ],
        ),
      ),
    );
  }
}
