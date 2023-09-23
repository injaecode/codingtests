public class SelectAnts {
  public int solution(int hp) {
    int i = hp/5;
    int j = (hp%5)/3;
    int k = (hp%5)%3;
    int answer = i+j+k;    
    return answer;
}
}