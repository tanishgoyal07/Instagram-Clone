

import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final String username;
  final String postId;
  final datePublished;
  final String postUrl;
  final String profImage;
  final likes;

  const Post({
    required this.description,
    required this.uid,
    required this.datePublished,
    required this.username,
    required this.postId,
    required this.profImage,
    required this.postUrl,
    required this.likes,
  });

  Map<String , dynamic> toJson() => {
    "description": description,
    "uid": uid,
    "username": username,
    "postId" : postId,
    "datePublished" : datePublished,
    "profImage": profImage,
    "likes": likes,
    "postUrl": postUrl,
  };

  static Post fromSnap(DocumentSnapshot snap){
    var snapshot = snap.data() as Map<String , dynamic>;

    return Post(
      username: snapshot['username'],
      uid: snapshot['uid'],
      description: snapshot['description'],
      datePublished: snapshot['datePublished'],
      likes: snapshot['likes'],
      postId: snapshot['postId'],
      postUrl: snapshot['postUrl'],
      profImage: snapshot['profImage'],
    );
  }
}
