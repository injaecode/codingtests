public class SqrtCheck {
  public int solution(int n) {
    double compA = Math.sqrt(n);
    double compB = (int) compA * compA;

    return (n == compB) ? 1 : 2;
    // return (n%Math.sqrt(n)==0)?1:2;
  }
}
