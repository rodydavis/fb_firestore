import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'classes/index.dart';

class FbFirestore {
  FbFirestore._();
  static FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static Future<List<FbDocumentSnapshot>> getDocs(String path) async {
    final _data = await _firestore.collection(path).get();
    if (_data == null) return null;
    if (_data?.docs == null || _data.docs.isEmpty) return [];
    List<FbDocumentSnapshot> _items = [];
    _data.docs.forEach((d) {
      _items.add(FbDocumentSnapshot(d.id, data: _getData(d)));
    });
    return _items;
  }

  static Future editDoc(String path, Map<String, dynamic> data,
      {bool update = false}) async {
    if (update) {
      await _firestore.doc('$path').update(data);
    } else {
      await _firestore.doc('$path').set(data);
    }
  }

  static Future addDoc(String path, Map<String, dynamic> data) async {
    await _firestore.collection(path).add(data);
  }

  static Future<FbDocumentSnapshot> getDoc(String path) async {
    final _data = await _firestore.doc(path).get();
    return FbDocumentSnapshot(_data.id, data: _getData(_data));
  }

  static Future deleteDoc(String path) async {
    await _firestore.doc(path).delete();
  }

  static Map<String, dynamic> _getData(DocumentSnapshot d) {
    if (d?.data == null) return null;
    return json.decode(json.encode(d.data));
  }
}
