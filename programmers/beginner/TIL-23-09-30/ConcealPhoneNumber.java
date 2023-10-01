public class ConcealPhoneNumber {
  public String solution(String phone_number) {
    String answer = "";
    int lastNums = phone_number.length() - 4;
    for (int i = 0; i < lastNums; i++) {
      answer += "*";
    }
    answer += phone_number.substring(lastNums);

    return answer;
  }
}