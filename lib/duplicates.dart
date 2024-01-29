/// [1,2,3,4,5,6,6]
bool isContainsDuplicates(List arr) {

  if(arr.isEmpty) {
    return false;
  }

  var mapOfint = {};


  for(var i in arr) {
    if(mapOfint.containsKey(i)) {
      return true;
    }
    mapOfint[i] = mapOfint[i];
  }
  return false;
}

void main() {
   print(isContainsDuplicates([1,2,2,3,6]));
  }