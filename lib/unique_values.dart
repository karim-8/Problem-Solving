

int countUniqueValues(List arrr) {
  if(arrr.isEmpty || arrr.length == 1) return 0;
  return arrr.toSet().length;
}