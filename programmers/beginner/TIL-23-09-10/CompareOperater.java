public class CompareOperater {
  public int solution(int a, int b) {
    int plus = Integer.parseInt("" + a + b);
    int compare = 2 * a * b;

    return (plus >= compare) ? plus : compare;
  }
}
