import java.util.Arrays;

public class CopyElementsFrom {
  public int[] solution(int[] num_list, int n) {
    int last = num_list.length;
    int[] answer = Arrays.copyOfRange(num_list, n - 1, last);
    return answer;
  }
}
