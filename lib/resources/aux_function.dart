List<int> maxValueList(List<int> l) {
  /*This list is used to return the greater value and his index respectively*/
  List<int> greater = [];

  /*Inicialize max element as the first*/
  greater.add(l[0]);
  greater.add(0);

  /*Compare every element with the current one*/
  for (var i = 1; i < l.length; i++) {
    if (l[i] > greater[0]) {
      greater[0] = l[i];
      greater[1] = i;
    }
  }
  return greater;
}
