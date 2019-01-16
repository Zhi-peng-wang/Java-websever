package Demo1;

import java.math.BigInteger;

/**
 * public BigInteger add(BigInteger val)        加法
 * public BigInteger subtract(BigInteger val)   减法
 * public BigInteger multiply(BigInteger val)   乘法
 * public BigInteger divide(BigInteger val)     除法
 * public BigInteger[] divideAndRemainder(BigInteger val)   返回商和余数的数组
 */
public class BigIntergerDemmo2 {
	public static void main(String[] args) {
		BigInteger b1 = new BigInteger("200");
		
		BigInteger b2 = new BigInteger("100");
		
		//public BigInteger add(BigInteger val)        加法
		System.out.println(b1.add(b2));
		
//		public BigInteger subtract(BigInteger val)   减法
		System.out.println(b1.subtract(b2));
		
//		public BigInteger multiply(BigInteger val)   乘法
		System.out.println(b1.multiply(b2));
		
//		public BigInteger divide(BigInteger val)     除法
		System.out.println(b1.divide(b2));
		 	
//		public BigInteger[] divideAndRemainder(BigInteger val)   返回商和余数的数组
		BigInteger[] divideAndRemainder = b1.divideAndRemainder(b2);
		System.out.println("商是："+divideAndRemainder[0]+"，余数："+divideAndRemainder[1]);
	
	
	}
}
