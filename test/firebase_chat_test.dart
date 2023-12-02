// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_chat/src/services/firebase_service_impl.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';

// // Create a mock for the Firebase instance
// class MockFirebaseInstance extends Mock implements FirebaseFirestore {}

// void main() {
//   group('sendMessageToFirebase', () {
//     test('should update messages in Firestore', () async {
//       // Arrange
//       final mockFirebaseInstance = MockFirebaseInstance();
//       final service = FirebaseService(
//         instance: mockFirebaseInstance,
//         collectionName: "xyz",
//         docName: "abc",
//         chats: [],
//       ); // Inject the mock Firebase instance

//       // Mock Firestore collection and document
//       final mockCollectionReference =
//           MockCollectionReference<Map<String, dynamic>>();
//       final mockDocumentReference =
//           MockDocumentReference<Map<String, dynamic>>();

//       when(mockFirebaseInstance.collection(service.collectionName))
//           .thenReturn(mockCollectionReference);
//       when(mockCollectionReference.doc(service.docName))
//           .thenReturn(mockDocumentReference);

//       // Act
//       await service.sendMessageToFirebase();

//       // Assert
//       // Verify that the update method was called with the correct arguments
//       verify(mockDocumentReference
//           .update({'messages': anyNamed(service.collectionName)})).called(1);
//     });
//   });
// }

// // Mock classes for Firestore references
// class MockCollectionReference<T extends Object?> extends Mock
//     implements CollectionReference<T> {}

// class MockDocumentReference<T extends Object?> extends Mock
//     implements DocumentReference<T> {}
