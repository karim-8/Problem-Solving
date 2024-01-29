
void main() {
  print(maximumSubArray([1,-2,4,-2,6]));
}

// int maximumSubArray(List nums) {
//
//   var maxNumber = nums[0];
//   var currentSum = 0;
//
//
//   for (int i = 0; i< nums.length -1; i++) {
//     /// Negative case not needed
//     currentSum = nums[i] + nums[i+1];
//     if(currentSum < 0) {
//       continue;
//     }else {
//       if(maxNumber < currentSum ) {
//         maxNumber = currentSum;
//       }
//     }
//   }
//
//
//   return currentSum;
// }


int maximumSubArray(List nums) {
  var maxNum = nums[0];
  var currentSum = nums[0];

  for(int i = 0; i< nums.length; i++) {
    currentSum = (nums[i] > currentSum + nums[i]) ? nums[i] : currentSum + nums[i];
    maxNum = (currentSum > maxNum) ? currentSum : maxNum;
  }
  return maxNum;
}



