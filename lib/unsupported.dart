import 'classes/index.dart';

class FbFirestore {
  FbFirestore._();

  static Future<List<FbDocumentSnapshot>> getDocs(String path) {
    throw 'Platform Not Supported';
  }

  static Future editDoc(String path, Map<String, dynamic> data,
      {bool update = false}) {
    throw 'Platform Not Supported';
  }

  static Future addDoc(String path, Map<String, dynamic> data) {
    throw 'Platform Not Supported';
  }

  static Future deleteDoc(String path) {
    throw 'Platform Not Supported';
  }

  static Future<FbDocumentSnapshot> getDoc(String path) {
    throw 'Platform Not Supported';
  }
}
