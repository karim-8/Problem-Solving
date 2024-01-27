import 'package:collection/collection.dart';
void main() {
  print(whatIsTheDuplicate([1,1,1,2]));
}

///
///
/// Get The Unique Elements.
/// Get The Duplicates.
///
///
Set whatIsTheDuplicate(List items) {
  if(items.isEmpty) return {};

  Set<dynamic> uniqueElements = {};
  List repeatedItems = [];

  for(int x in items) {
    if(uniqueElements.contains(x)) {
      repeatedItems.add(x);
    }

    uniqueElements.add(x);
  }

  return uniqueElements;
}