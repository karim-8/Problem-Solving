/// [1,2,3,4,5,6,6]
bool isContainsDuplicates(List arr) {

  if(arr.isEmpty) {
    return false;
  }

  var mapOfint = {};

  for(int i in arr) {
    mapOfint[i] = (mapOfint[i] ?? 0) + 1;
  }

  for(var x in mapOfint.values){
    if (x>1) {
      print("it Containssssss");
      return true;
    }
  }

  return false;
}

void main() {
   print(isContainsDuplicates([1,2,3]));
  }