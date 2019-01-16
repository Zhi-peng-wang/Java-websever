package Demo1;

import java.math.BigInteger;

/**
 * BigInteger(String val) 
 * 		可以让超过integer范围的数据进行计算
 * 
  * 构造方法：
 * 		BigInteger(String val) 
 *
 */
public class BigIntegerDemo {

	public static void main(String[] args) {
		/*
		 * Integer i1 = new Integer(111); System.out.println(i1);
		 * System.out.println(Integer.MAX_VALUE); //java.lang.NumberFormatException
		 * Integer i2 = new Integer("2147483648");//因为你已经超出integer的最大值，最大值为2147483647
		 * System.out.println(i2);
		 */
		
		//通过大数据来创建对象
		BigInteger b1= new BigInteger("2147483648");
		System.out.println(b1);
		
	}

}










