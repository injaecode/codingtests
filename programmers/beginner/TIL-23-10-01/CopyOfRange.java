public class CopyOfRange {
  public int[] solution(int[] num_list, int n) {
    int[] answer = new int[n];
    for (int i = 0; i < n; i++) {
      answer[i] = num_list[i];
    }
    return answer;
    // return Arrays.copyOfRange(num_list,0,n);
  }
}
