public class DiceGame{
  public int solution(int a, int b, int c) {
    int answer = 0;
    if(a == b && a==c) {
        answer = (a+b+c)*((a*a)+(b*b)+(c*c))*((a*a*a)+(b*b*b)+(c*c*c));
        return answer;

    }else if(b==c || a==b || a==c){
           answer = (a+b+c)*((a*a)+(b*b)+(c*c));
            return answer;
        
    }else{
        answer = a+b+c;
        
    }
    return answer;
}
}