// Author: Troy Slatkavitz
//*******************************************************************
// Welcome to CompileJava!
// If you experience any issues, please contact us ('More Info')  -->
// Also, sorry that the "Paste" feature no longer works! GitHub broke
// this (so we'll switch to a new provider): https://blog.github.com\
// /2018-02-18-deprecation-notice-removing-anonymous-gist-creation/
//*******************************************************************

import java.lang.Math; // headers MUST be above the first class

// one class needs to have a main() method
public class HelloWorld
{
  // arguments are passed using the text field below this editor
  public static void main(String[] args)
  {
	String sineArr[] = new String[1024];
    String BRAMArr[] = new String[64];

    for(int i=0; i< 1024; i++)
    {
      sineArr[i] =  String.format("%4s",Integer.toHexString((int)((Math.sin((2*Math.PI)/1024*i)*0x7FFF)+0x8000))).replace(' ','0').toUpperCase();
    }
	for(int i =0; i<64; i++)
    {
      	for(int j = 0; j<16; j++)
        {
          if(j == 0)
        	BRAMArr[i] = sineArr[i*16+j] + ((j==0)?  "\",": "") ;
          else
            BRAMArr[i] = sineArr[i*16+j] + ((j==0)?  "\",": "")+BRAMArr[i] ;
        }
      
    }
    for(int j = 0; j<=63; j++)
    {
     	BRAMArr[j] = "INIT_" + String.format("%2s",Integer.toHexString((int)(j))).replace(' ','0').toUpperCase() + " => X\"" + BRAMArr[j];
      System.out.println(BRAMArr[j]);
    }
    
  }
}


