import 'package:cloud_firestore/cloud_firestore.dart';

class Message{
  final String senderId;
  final String senderEmail;
  final String recieverId;
  final String recieverEmail;
  final String message;
  final Timestamp timestamp;

  const Message({
    required this.senderId,
    required this.senderEmail,
    required this.recieverId,
    required this.recieverEmail,
    required this.message,
    required this.timestamp,
  });

  Map<String, dynamic> toMap(){
    return {
      "senderId" : senderId,
      "senderEmail" : senderEmail,
      "recieverId" : recieverId,
      "recieverEmail" : recieverEmail,
      "message" : message,
      "timestamp" : timestamp,
    };
  }
}