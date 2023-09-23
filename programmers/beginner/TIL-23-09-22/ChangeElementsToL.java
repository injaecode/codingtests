public class ChangeElementsToL {
  public String solution(String myString) {
    String answer = "";
    char[] charArray = myString.toCharArray();
    for (char c : charArray) {
      answer += (c >= 'l') ? c : "l";
    }

    return answer;
  }
}
