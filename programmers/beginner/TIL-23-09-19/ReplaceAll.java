public class ReplaceAll {
  public String solution(String my_string, String alp) {
    String newString = "";
    if (my_string.contains(alp)) {
      newString = my_string.replaceAll(alp, alp.toUpperCase());
    } else {
      newString = my_string;
    }

    return newString;
  }
}
