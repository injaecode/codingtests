public class StringOverwrite {
  public String solution(String my_string, String overwrite_string, int s) {

    int num = overwrite_string.length();
    String front = my_string.substring(0, s);
    String end = my_string.substring(s + num);

    String answer = front + overwrite_string + end;

    return answer;
  }
}
