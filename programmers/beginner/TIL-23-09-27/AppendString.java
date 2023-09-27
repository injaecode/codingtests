public class AppendString {
  public String solution(String my_string, int[] index_list) {
    String answer = "";
    String[] strArr = my_string.split("");
    for (int idx : index_list) {
      answer += strArr[idx];
    }
    return answer;
  }
}
