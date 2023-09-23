public class IntegerArrayCompare {
  public int solution(int[] arr1, int[] arr2) {
    int one = 0;
    int two = 0;
    if (arr1.length > arr2.length) {
      return 1;
    } else if (arr1.length < arr2.length) {
      return -1;
    } else {
      for (int i : arr1) {
        one += i;
      }
      for (int j : arr2) {
        two += j;
      }
      return (one > two) ? 1 : ((one == two) ? 0 : -1);
    }

  }
}
