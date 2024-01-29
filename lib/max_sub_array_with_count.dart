void main() {
  print(maximumSubArray2([1,-2,4,-2,6], 3));
}


int maximumSubArray2(List nums, int items) {
  var maxNum = nums[0] + nums[1] + nums[2];
  var currentSum = nums[0];


  // Your item and another 2 items.
  for(int i = 1; i < nums.length - 2; i++) {
    currentSum = nums[i] + nums[i+1] + nums[i+2];
    maxNum = (currentSum > maxNum) ? currentSum : maxNum;
  }
  return maxNum;
}