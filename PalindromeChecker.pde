public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String w = noSpaces(word);
  w = noCapitals(w);
  w = onlyLetters(w);

  if (w.equals(reverse(w))){
    return true;
  }
  else{
    return false;
  }//your code here
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i > -1; i--)
    {
      sNew = sNew + str.substring(i,i+1);
    }
    return sNew;
}
public String noSpaces(String sWord){
  String emptyTwo = new String();
  for (int i=0; i< sWord.length(); i++){
    String max = sWord.substring(i,i+1);
    if (!max.equals(" ")){
      emptyTwo = emptyTwo + max;
    }
  }
  return emptyTwo;
}

public String noCapitals(String sWord)
{
  String bob = sWord.toLowerCase();
  return bob;
}

public String onlyLetters(String sString)
{
  String emptyThree = new String();
 
  for (int i=0; i< sString.length(); i++){
   
    if (Character.isLetter(sString.charAt(i)) == true){
      emptyThree = emptyThree +sString.charAt(i);
    }
  }
  return emptyThree;
}

