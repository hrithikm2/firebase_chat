import 'package:cloud_firestore/cloud_firestore.dart';

abstract class FirebaseServiceRepo {
  //Add more functions here
  Stream<DocumentSnapshot> getChatMessages();

  Future<void> sendMessageToFirebase(List<Map<String, dynamic>> chats);

  Future<void> getPreviousChats();
}
