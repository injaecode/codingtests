public class PlusOrMultiple {
  public int solution(int[] num_list) {
    int answer = 0;
    int plusSum = 0;
    int mulSum = 1;

    for (int i = 0; i < num_list.length; i++) {
      plusSum += num_list[i];
      mulSum *= num_list[i];
    }
    return (plusSum * plusSum > mulSum) ? 1 : 0;
  }
}
