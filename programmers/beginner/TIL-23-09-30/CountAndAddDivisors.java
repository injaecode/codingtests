public class CountAndAddDivisors {
  public int solution(int left, int right) {
    int answer = 0;

    for (int i = left; i <= right; i++) {
      int devided = 0;
      for (int j = 1; j <= i; j++) {
        if (i % j == 0) {
          devided++;
        }
      }
      answer += (devided % 2 == 0) ? i : -i;
    }
    return answer;
  }
}
