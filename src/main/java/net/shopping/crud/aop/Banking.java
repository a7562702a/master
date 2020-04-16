package net.shopping.crud.aop;

import java.util.Arrays;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

//@Component ��ü�۾� �ѹ��� ���� �����  	
@Aspect
public class Banking {
	
	 //@Around("execution(public * net.shopping.crud..*(..))")
	 @Around("execution(public * net.shopping.crud.BoardDAO.dbDetail(..))")
	  public Object  timeLog(ProceedingJoinPoint pjp) throws Throwable{
	    long startTime = System.currentTimeMillis();   
	    long endTime=System.currentTimeMillis();
	    System.out.println(pjp.getSignature().getName()+"�޼ҵ� ���ӽð� : "+(endTime-startTime)+"��");
	    Object result=pjp.proceed();
	    return result;
	 }//end	

	 //@Before("execution(public * net.shopping.crud..*(..))")
	 @Before("execution(public * net.shopping.crud.BoardDAO.dbDetail(..))")
	 public void open( ){
	   System.out.println("open�޼ҵ� �ڵ�ȣ��");
	   System.out.println("�α�����,��������,Ʈ�����");
	 }//end
	  
	 //@After("execution(public * net.shopping.crud..*(..))")
	 @After("execution(public * net.shopping.crud.BoardDAO.dbDetail(..))")
	  public void close( ){
		System.out.println("close�޼ҵ� �ڵ�ȣ��");
		System.out.println("���Ϻ�����,���޼���");
		System.out.println("==========================");
	  }//end
}//class END
