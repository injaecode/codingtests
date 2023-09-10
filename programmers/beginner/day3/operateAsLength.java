public class operateAsLength {
  public int solution(int[] num_list) {
    int answer = 0;
    if (num_list.length > 10) {
      for (int i = 0; i < num_list.length; i++) {
        answer += num_list[i];
      }
    } else {
      answer = 1;
      for (int i = 0; i < num_list.length; i++) {
        answer *= num_list[i];
      }
    }

    return answer;
  }

  // if (num_list.length > 10) return Arrays.stream(num_list).sum();
  // int answer = 1;
  // for (int n : num_list) answer *= n;
  // return answer;
}
