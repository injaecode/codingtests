public class SumOfStringToInt {
  public int solution(String num_str) {
    int sum = 0;
    for (int i = 0; i < num_str.length(); i++) {
      String[] answer = num_str.split("");
      sum += Integer.parseInt(answer[i]);
    }
    ;

    return sum;
  }
}
