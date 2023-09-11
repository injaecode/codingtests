public class ReturnOnCase {
  public int solution(int n) {
    int answer = 0;
    for (int i = 1; i <= n; i++) {
      if (n % 2 == 1) {
        answer += (i % 2 == 1) ? i : 0;
      } else {
        answer += (i % 2 == 0) ? i * i : 0;
      }
    }
    return answer;
  }
}