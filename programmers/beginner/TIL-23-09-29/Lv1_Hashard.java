public class Lv1_Hashard {
  public boolean solution(int x) {
    int sum = 0;
    int y = x;
    while (x > 0) {
      sum += x % 10;
      x /= 10;
    }
    return (y % sum == 0) ? true : false;
  }
}
