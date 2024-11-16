
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DatabaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;


  Future<void> addPersonalTask(Map<String, dynamic> userPersonalMap) async {
    try {
      String userId = _auth.currentUser!.uid;
      await FirebaseFirestore.instance
          .collection("Users")
          .doc(userId)
          .collection("Personal")
          .add(userPersonalMap);
    } catch (e) {
      print("Error adding personal task: $e");
    }
  }


  Future<void> addCollegeTask(Map<String, dynamic> userPersonalMap) async {
    try {
      String userId = _auth.currentUser!.uid;
      await FirebaseFirestore.instance
          .collection("Users")
          .doc(userId)
          .collection("College")
          .add(userPersonalMap);
    } catch (e) {
      print("Error adding college task: $e");
    }
  }


  Future<void> addOfficeTask(Map<String, dynamic> userPersonalMap) async {
    try {
      String userId = _auth.currentUser!.uid;
      await FirebaseFirestore.instance
          .collection("Users")
          .doc(userId)
          .collection("Office")
          .add(userPersonalMap);
    } catch (e) {
      print("Error adding office task: $e");
    }
  }


  Future<Stream<QuerySnapshot>> getTasks(String category) async {
    try {
      String userId = _auth.currentUser!.uid;
      return FirebaseFirestore.instance
          .collection("Users")
          .doc(userId)
          .collection(category)
          .snapshots();
    } catch (e) {
      print("Error fetching tasks for category $category: $e");
      return Stream.empty();
    }
  }


  Future<void> markTaskAsComplete(String taskId, String category) async {
    try {
      String userId = _auth.currentUser!.uid;
      await FirebaseFirestore.instance
          .collection("Users")
          .doc(userId)
          .collection(category)
          .doc(taskId)
          .update({"Yes": true});
    } catch (e) {
      print("Error marking task as complete: $e");
    }
  }


  Future<void> deleteTask(String taskId, String category) async {
    try {
      String userId = _auth.currentUser!.uid;
      await FirebaseFirestore.instance
          .collection("Users")
          .doc(userId)
          .collection(category)
          .doc(taskId)
          .delete();
    } catch (e) {
      print("Error deleting task: $e");
    }
  }
}
