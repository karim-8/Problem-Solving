bool isSubsequence(String str1, String str2) {
  // Initialize pointers for both strings
  int pointer1 = 0;
  int pointer2 = 0;

  // Iterate through the characters of str2
  while (pointer2 < str2.length) {
    // If the current characters match, move pointer1 to the next character
    if (str1[pointer1] == str2[pointer2]) {
      pointer1++;
    }

    // Move pointer2 to the next character in str2
    pointer2++;

    // If pointer1 reaches the end of str1, all characters are found in order
    if (pointer1 == str1.length) {
      return true;
    }
  }

  // If the loop completes without returning, not all characters were found in order
  return false;
}

void main() {
  // Example usage
  String str1 = "abc";
  String str2 = "ahbgdc";

  if (isSubsequence(str1, str2)) {
    print("$str1 is a subsequence of $str2.");
  } else {
    print("$str1 is not a subsequence of $str2.");
  }
}
