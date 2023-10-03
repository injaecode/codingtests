public class EmergencyCount {
  public int[] solution(int[] emergency) {
    int[] answer = new int[emergency.length];

    for (int i = 0; i < answer.length; i++) {
      int cnt = 1;
      for (int j = 0; j < answer.length; j++) {
        if (emergency[i] < emergency[j]) {
          cnt++;
        }
      }
      answer[i] = cnt;
    }
    return answer;
  }
}
