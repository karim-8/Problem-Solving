void main() {
  print(stockProfit([7,1,5,3,6,4]));
}

// - > Profit Per Day -> [7,1,5,3,6,4]
//                          l,      r
// - > return Max

// left pointer --> Buy
// Right Pointer --> Selling

int stockProfit(List nums) {
  var leftPointer = 0;
  var rightPointer = 1;
  var maximumProfit = 0;

  while (rightPointer < nums.length) {

    if (nums[leftPointer] > nums[rightPointer]) {
      leftPointer = rightPointer;
      rightPointer++;
    }else {
      var netProfit = nums[rightPointer] - nums[leftPointer];
      maximumProfit = (netProfit > maximumProfit) ? netProfit : maximumProfit;
      rightPointer++;
    }
  }
  return maximumProfit;
}
