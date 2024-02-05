
  void main() {
  List<int> nums = [4, 5, 6, 7, 0, 1, 2];
  int target = 0;
  
  print("Array: $nums");
  print("Target: $target");
  
  int result = search(nums, target);
  
  if (result != -1) {
    print("Target found at index $result");
  } else {
    print("Target not found in the array");
  }
}
  
  
int search(List<int> nums, int target) {
  int low = 0;
  int high = nums.length - 1;

  while (low <= high) {
    int mid = (low + high) ~/ 2;

    if (nums[mid] == target) {
      return mid; // Target found
    }

    // Check if the left half is sorted
    if (nums[low] <= nums[mid]) {
      if (nums[low] <= target && target < nums[mid]) {
        high = mid - 1; // Search in the left half
      } else {
        low = mid + 1; // Search in the right half
      }
    }
    // Check if the right half is sorted
    else {
      if (nums[mid] < target && target <= nums[high]) {
        low = mid + 1; // Search in the right half
      } else {
        high = mid - 1; // Search in the left half
      }
    }
  }

  return -1; // Target not found
}



