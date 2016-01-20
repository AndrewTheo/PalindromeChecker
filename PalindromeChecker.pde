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
  String sTest = new String();
  String ssTest = new String();

  for(int i=0; i<word.length(); i++)
  {
    if(Character.isLetter((word.charAt(i))) == false)
    {

    }
    else{
      ssTest = ssTest + word.substring(i,i+1);
      ssTest = ssTest.toLowerCase();
    }
  }
  for(int nI=ssTest.length()-1; nI>=0; nI--)
  {
      sTest = sTest + ssTest.substring(nI,nI+1);  
  }

  if(sTest.equals(ssTest)) 
  {
    return true;
  }
  else
  {
    return false;
  }

}
