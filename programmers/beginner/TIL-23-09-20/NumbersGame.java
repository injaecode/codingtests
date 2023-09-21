public class NumbersGame {
  public int solution(int order) {
    int answer = 0;
    while (order > 0) {
      int nums = order % 10;
      if (nums > 0 && nums % 3 == 0) {
        answer++;
      }
      order /= 10;
    }
    ;

    return answer;
  }
}
