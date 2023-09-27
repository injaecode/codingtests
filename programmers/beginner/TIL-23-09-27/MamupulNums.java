public class MamupulNums {
  public String solution(int[] numLog) {
    String answer = "";

    for (int i = 1; i < numLog.length; i++) {
      int diff = numLog[i] - numLog[i - 1];
      answer += (diff == 1) ? "w" : (diff == -1) ? "s" : (diff == 10) ? "d" : "a";
    }
    return answer;
  }
}