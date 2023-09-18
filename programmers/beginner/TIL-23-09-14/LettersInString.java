public class LettersInString {
  public String solution(String my_string, int n) {
    int startAt = my_string.length() - n;
    String answer = my_string.substring(startAt);
    return answer;
  }
}
