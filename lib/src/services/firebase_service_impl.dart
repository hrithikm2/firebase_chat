import 'package:cloud_firestore/cloud_firestore.dart';

import 'firebase_service_repo.dart';

class FirebaseService implements FirebaseServiceRepo {
  const FirebaseService({
    required this.instance,
    required this.collectionName,
    required this.docName,
    required this.chats,
  });
  final FirebaseFirestore instance;
  final String collectionName;
  final String docName;
  final List<Map<String, dynamic>> chats;

  @override
  Future<void> sendMessageToFirebase() async {
    //Send message here.

    await instance
        .collection(collectionName)
        .doc(docName)
        .update({'messages': chats});
  }

  @override
  Stream<DocumentSnapshot> getChatMessages() {
    return instance.collection(collectionName).doc(docName).snapshots();
  }

  @override
  Future<DocumentSnapshot> getPreviousChats() async {
    return await instance
        .collection(collectionName)
        .doc(docName)
        .get(); //Replace with ChatID
  }
}
