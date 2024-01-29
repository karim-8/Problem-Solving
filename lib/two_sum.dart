

List<int> twoSum(List<int> nums, int target) {

  if(nums.isEmpty) return [];

   var myMap = {};

  for(int i=0; i<nums.length; i++) {
    var complement = target - nums[i];

    if(myMap.containsKey(complement)) {
      return [myMap[complement],i];
    }
    /// if not add the value and its own index
    myMap[nums[i]] = i;
  }


  return [];
}

void main() {
  List<int> nums = [2, 7, 11, 15];
  int target = 9;

  List<int> result = twoSum(nums, target);

  if (result.isNotEmpty) {
    print("Two numbers that add up to $target are at indices: ${result[0]} and ${result[1]}");
  } else {
    print("No solution found.");
  }
}
