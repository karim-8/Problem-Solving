
void main() {

  print(sumZeroPointers([-2,-1,6,8]));
}

List<int> sumZeroPointers(List arr) {

  if(arr.isEmpty) {
    return [];
  }

  /// Initialize pointers
  var left = 0;
  var right = arr.length -1;

  while(left < right) {
    var sum = arr[left] + arr[right];

    if(sum == 0) return [arr[left],arr[right]];

    if(sum > 0) {
      right--;
    }else{
      left++;
    }
  }
  return [];
}