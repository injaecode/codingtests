public class TotalUpBigger {

  public int solution(int a, int b) {
    String aa = Integer.toString(a);
    String bb = Integer.toString(b);
    int answerA = Integer.parseInt(aa + bb);
    int answerB = Integer.parseInt(bb + aa);

    return (answerA > answerB) ? answerA : answerB;
  }

  // int newA = Integer.parseInt(""+a+b);
  // int newB = Integer.parseInt(""+b+a);

}
