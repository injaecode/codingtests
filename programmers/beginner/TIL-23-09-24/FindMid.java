import java.util.Arrays;

public class FindMid {
  public int solution(int[] array) {
    Arrays.sort(array);
    int mid = array[array.length / 2];
    return mid;
  }
}
