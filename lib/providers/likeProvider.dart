import 'package:flutter/cupertino.dart';

class LikeProvider extends ChangeNotifier {
  // Create a map to hold the like state for each thread
  final Map<int, bool> _likeState = {};

  bool isLiked(int threadId) {
    return _likeState[threadId] ?? false;
  }

  void like(int threadId) {
    _likeState[threadId] = true;
    notifyListeners();
  }

  void unlike(int threadId) {
    _likeState[threadId] = false;
    notifyListeners();
  }
}
