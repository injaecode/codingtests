public class SumOfSeqNums {
  public int[] solution(int num, int total) {
    int[] answer = new int[num];
    int mid = total / num;
    int start = (num % 2 == 0) ? mid - (num / 2) + 1 : mid - (num / 2);
    for (int i = 0; i < answer.length; i++) {
      answer[i] = start;
      start++;
    }
    return answer;
  }
}
