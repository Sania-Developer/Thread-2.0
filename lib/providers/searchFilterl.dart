import 'package:flutter/cupertino.dart';
import 'package:instagram_thread/models/searchlist.dart';
import 'package:provider/provider.dart';

class SearchModel extends ChangeNotifier {
  String searchText = '';

  List<SearchListItem> getFilteredSearchItems(List<SearchListItem> searchlistItem) {
    if (searchText.isEmpty) {
      return searchlistItem;
    } else {
      return searchlistItem.where((item) {
        final lowercaseSearchText = searchText.toLowerCase();
        return item.idName.toLowerCase().contains(lowercaseSearchText) ||
            item.name.toLowerCase().contains(lowercaseSearchText);
      }).toList();
    }
  }

  void updateSearchText(String value) {
    searchText = value;
    notifyListeners(); // Notify listeners of state change
  }
}

