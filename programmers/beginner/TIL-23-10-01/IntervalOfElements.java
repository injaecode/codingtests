public class IntervalOfElements {
  public int[] solution(int[] num_list, int n) {
    int len = (num_list.length - 1) / n + 1;
    int[] answer = new int[len];
    int idx = 0;
    for (int i = 0; i < answer.length; i++) {
      answer[i] = num_list[idx];
      idx += n;
    }
    return answer;
  }
}
