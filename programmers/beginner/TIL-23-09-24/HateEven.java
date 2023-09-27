public class HateEven {
  public int[] solution(int n) {
    int[] answer = new int[(n + 1) / 2];
    int j = 1;
    for (int i = 0; i < answer.length; i++) {
      answer[i] = j;
      j += 2;
    }
    return answer;
  }
}