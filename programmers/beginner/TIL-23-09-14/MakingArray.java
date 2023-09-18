public class MakingArray {
  public int[] solution(int n, int k) {
    int arrLen = n / k;
    int[] answer = new int[arrLen];
    int mul = 1;
    for (int i = 0; i < arrLen; i++) {

      answer[i] = k * mul;
      mul++;
    }
    return answer;
  }
}
