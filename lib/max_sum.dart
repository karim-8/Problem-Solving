void main() {
 print(getMaxSum([1,2,3,4], 2));
}


int getMaxSum(List<int> arr, int k){

  int maxSum = 0;
  int currentSum = 0;


  for(int i=0; i<k; i++) {
    currentSum += arr[i];
  }
  maxSum = currentSum;

  for(int i=k; i<arr.length; i++) {
    /// Subtract the out item
    currentSum -= arr[i-k];
    /// Add the new item
    currentSum += arr[i];
    if(currentSum > maxSum) maxSum = currentSum;
  }

  return maxSum;
}