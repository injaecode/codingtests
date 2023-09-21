public class ConditionalCase {
  public String[] solution(String[] strArr) {
    String[] answer = new String[strArr.length];
    for (int idx = 0; idx < strArr.length; idx++) {
      answer[idx] = (idx % 2 != 0) ? strArr[idx].toUpperCase() : strArr[idx].toLowerCase();
    }
    return answer;
  }

}