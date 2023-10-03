public class ReverseLetters {
  public int solution(String myString, String pat) {
    String answer = "";
    for (int i = 0; i < myString.length(); i++) {
      answer += (myString.charAt(i) == 'A') ? "B" : "A";
    }

    return answer.contains(pat) ? 1 : 0;
  }
}
