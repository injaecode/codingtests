import java.util.Arrays;
import java.util.stream.IntStream;

public class ArrElmtChangeOrder {

  public int[] solution(int[] num_list, int n) {
    int[] answerA = Arrays.copyOfRange(num_list, n, num_list.length);
    int[] answerB = Arrays.copyOf(num_list, n);
    int[] answer = IntStream.concat(IntStream.of(answerA), IntStream.of(answerB)).toArray();
    return answer;
  }
}