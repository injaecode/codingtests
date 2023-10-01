public class EmphasizeA {
  public String solution(String myString) {
    String answer = myString.toLowerCase();
    String ans = answer.replaceAll("a", "A");
    return ans;
  }
}
