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
  //your code here
  String sNew = new String();
  sNew = word;
  int sLength = word.length();
  println("sLength: "+sLength);
  int nLast = word.length()-1;


  String sTest = new String();
  String sFinal = new String();


  String ssTest = new String();

  for(int i=0; i<word.length(); i++)
  {
    if(word.substring(i,i+1).equals(" "))
    {
      
    }
    else if((word.substring(i,i+1).equals("!")) || (word.substring(i,i+1).equals("'")) || (word.substring(i,i+1).equals(",")))
    {

    }
    else{

      ssTest = ssTest + word.substring(i,i+1);
      ssTest = ssTest.toLowerCase();
    }
  }
  //println("ssTest: "+ssTest);
  for(int nI=nLast; nI>=0; nI--)
  {
    //sFinal = sFinal + sTest.substring(nI,nI+1);
    if(word.substring(nI,nI+1).equals(" "))
    {
      
    }
    else if((word.substring(nI,nI+1).equals("!")) || (word.substring(nI,nI+1).equals("'")) || (word.substring(nI,nI+1).equals(",")))
    {

    }
    else{
      sTest = sTest + word.substring(nI,nI+1);
      sTest = sTest.toLowerCase();
    }    
  }

  //sNew = sNew.substring(sLength);
  //println("sNew: "+sNew);
  println("sTest:"+ sTest);
  //println("sFinal: "+sFinal);

  //sTest =sTest.toLowerCase();
  

  if(sTest.equals(ssTest)) 
  {
    return true;
  }
  else
  {
    return false;
  }

}
