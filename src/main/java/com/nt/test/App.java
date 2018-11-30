package com.nt.test;

import org.apache.log4j.Appender;
import org.apache.log4j.ConsoleAppender;
import org.apache.log4j.Layout;
import org.apache.log4j.Logger;
import org.apache.log4j.PatternLayout;
import org.apache.log4j.SimpleLayout;


public class App 
{
	
	private static final Logger log=Logger.getLogger(App.class);
	
    public static void main( String[] args )
    {
    	/*Layout layout=new SimpleLayout();
    	Layout pLayout=new PatternLayout("  %d %C  %L %l %M  [%p]   ::: %m %n");
    	Appender app=new ConsoleAppender(pLayout);
    	log.addAppender(app);*/
    	
    	int a=12;
    	int b=20;
    	
    	log.debug("this is debug");
    	log.info("this is info");
    	log.debug(a+b);
    	log.warn(a+b);
    	log.error(a+b);
    	
    }
}
