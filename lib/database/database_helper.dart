import 'package:cloud_firestore/cloud_firestore.dart';
import 'model.dart';

class DatabaseHelperPost {
  final CollectionReference collection =
  FirebaseFirestore.instance.collection(Post.collectionPost);
  //insert
  Future<DocumentReference> insertPost(Post post) {
  return collection.add(post.toJson());
  }

  //update
  void updatePost(Post post) async {
  await collection.doc(post.referenceId).update(post.toJson());
  }

  //delete
  void deletePost(Post post) async {
  await collection.doc(post.referenceId).delete();
  }

  // get all doc from collection
  Stream<QuerySnapshot> getStream() {
  return collection.snapshots();
  }
}

class DatabaseHelperAccount {
  final CollectionReference collection =
  FirebaseFirestore.instance.collection(Account.collectionAccount);
  //insert
  Future<DocumentReference> insertAccount(Account account) {
  return collection.add(account.toJson());
  }

  //update
  void updateAccount(Account account) async {
  await collection.doc(account.referenceId).update(account.toJson());
  }

  //delete
  void deleteAccount(Account account) async {
  await collection.doc(account.referenceId).delete();
  }

  // get all doc from collection
  Stream<QuerySnapshot> getStream() {
  return collection.snapshots();
  }
}

class DatabaseHelperPray {
  final CollectionReference collection =
  FirebaseFirestore.instance.collection(Pray.collectionPray);
  //insert
  Future<DocumentReference> insertPray(Pray pray) {
  return collection.add(pray.toJson());
  }

  //update
  void updatePray(Pray pray) async {
  await collection.doc(pray.referenceId).update(pray.toJson());
  }

  //delete
  void deletePray(Pray pray) async {
  await collection.doc(pray.referenceId).delete();
  }

  // get all doc from collection
  Stream<QuerySnapshot> getStream() {
  return collection.snapshots();
  }
}

class DatabaseHelperFetist {
  final CollectionReference collection =
  FirebaseFirestore.instance.collection(Fetist.collectionFetish);
  //insert
  Future<DocumentReference> insertFetist(Fetist fetist) {
  return collection.add(fetist.toJson());
  }

  //update
  void updateFetist(Fetist fetist) async {
  await collection.doc(fetist.referenceId).update(fetist.toJson());
  }

  //delete
  void deleteFetist(Fetist fetist) async {
  await collection.doc(fetist.referenceId).delete();
  }

  // get all doc from collection
  Stream<QuerySnapshot> getStream() {
  return collection.snapshots();
  }
}