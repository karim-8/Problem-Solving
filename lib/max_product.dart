import 'dart:developer';

void main() {
  List<int> nums = [2, 3, -2, 4];
  log("Array: $nums");
  log("Maximum Product: ${maxProduct(nums)}");
}



int maxProduct(List<int> nums) {
  var maxProductNum = nums[0];
  var minProductNum = nums[0];
  var result = nums[0];

  if (nums.isEmpty) {
    return 0;
  }

  for (int i = 1; i < nums.length; i++) {
    /// Handling Negative cases
    if (nums[i] < 0) {
      int temp = maxProductNum;
      maxProductNum = minProductNum;
      minProductNum = temp;
    }

    /// Base cases
    maxProductNum = (nums[i] > (maxProductNum * nums[i]))
        ? nums[i]
        : (maxProductNum * nums[i]);
    minProductNum = (nums[i] < (maxProductNum * nums[i]))
        ? nums[i]
        : (maxProductNum * nums[i]);
        /// In case negative result will contain the last max positive value ya Boss. 
    result = (result > maxProductNum) ? result : maxProductNum;
  }

  return result;
}
