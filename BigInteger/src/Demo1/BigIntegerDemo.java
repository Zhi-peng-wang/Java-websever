package Demo1;

import java.math.BigInteger;

/**
 * BigInteger(String val) 
 * 		�����ó���integer��Χ�����ݽ��м���
 * 
  * ���췽����
 * 		BigInteger(String val) 
 *
 */
public class BigIntegerDemo {

	public static void main(String[] args) {
		/*
		 * Integer i1 = new Integer(111); System.out.println(i1);
		 * System.out.println(Integer.MAX_VALUE); //java.lang.NumberFormatException
		 * Integer i2 = new Integer("2147483648");//��Ϊ���Ѿ�����integer�����ֵ�����ֵΪ2147483647
		 * System.out.println(i2);
		 */
		
		//ͨ������������������
		BigInteger b1= new BigInteger("2147483648");
		System.out.println(b1);
		
	}

}










