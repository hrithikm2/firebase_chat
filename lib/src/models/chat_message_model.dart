import 'package:cloud_firestore/cloud_firestore.dart';

class ChatMessage {
  String message;
  Timestamp timestamp;
  String userType;
  String chatID;

  ChatMessage({
    required this.message,
    required this.timestamp,
    required this.userType,
    required this.chatID,
  });

  // Convert a map to a ChatMessage object
  factory ChatMessage.fromMap(Map<String, dynamic> map) {
    return ChatMessage(
      message: map['message'],
      timestamp: map['timestamp'] as Timestamp,
      userType: map['userType'],
      chatID: map['chatID'],
    );
  }

  // Convert a ChatMessage object to a map
  Map<String, dynamic> toMap() {
    return {
      'message': message,
      'timestamp': timestamp,
      'userType': userType,
      'chatID': chatID,
    };
  }
}
