// Problem solving training

/*
********************************************************************************
* Problem 1:
*
*  The function same accepts two arrays.
*  It should return true if every value in the array has it's corresponding value
*  squared in the second array. The frequency of values must be the same.
*
* */
import 'dart:developer';

void main() {
  /// Test cases:-

  /// Not equal Length
  //print(frequencyCounter([7,7,6, 8, 9], [4,4, 1, 9]));
  /// Simple Case
  //print(frequencyCounter([1,2], [1,4]));
  /// Complex Case
  print(frequencyCounter([1,2,3,4], [1,4,9,16]));
}

// - Check over zero length
// - Define Maps
// - add items in map for easy access
// - compare items here and there
// - return false if they are not equal

 bool frequencyCounter(List array1, List array2) {

  /// Edge cases
  if(array1.length != array2.length) {
    print("false");
    return false;
  }

  var freqMapOne = {};
  var freqMapTwo = {};

  for (int item in array1) {
    freqMapOne[item] = (freqMapOne[item] ?? 0) + 1;
  }

  for(int item in array2) {
    /// freqMapTwo[item] Adding new item with corresponding key inside the map automatically.
    /// (freqMapTwo[item] ?? 0) --> If the value is there add one or not add zero.
    freqMapTwo[item] = (freqMapTwo[item] ?? 0) + 1;
  }

  /// Checks Over The Keys.
  for(int key in freqMapOne.keys) {
    if (!freqMapTwo.keys.contains(key*key)){
      return false;
    }

    /// Checks 0ver The Values In Repeating Counts If They Are The Same.
    if(freqMapTwo[key*key] != freqMapOne[key]){
      return false;
    }
  }

  return true;
}
