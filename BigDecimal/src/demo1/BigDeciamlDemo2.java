package demo1;

import java.math.BigDecimal;
import java.math.RoundingMode;

/**
 * @author ��־��
 * public BigDecimal add(BigDecimal augend)		�ӷ�
 * public BigDecimal subtract(BigDecimal subtrahend)		����
 * public BigDecimal multiply(BigDecimal multiplicand)		�˷�
 * public BigDecimal divide(BigDecimal divisor)				����
 * public BigDecimal divide(BigDecimal divisor,
 * 									int scale,
 * 									int roundingMode)
 * 							�̣���λС�������ȡ��
 *
 */
public class BigDeciamlDemo2 {
	public static void main(String[] args) {
		/*
		 * System.out.println(0.05+0.01); 
		 * System.out.println(1.0-0.42);
		 * System.out.println(4.015*100); 
		 * System.out.println(123.3/100);
		 */
		
		BigDecimal b1 = new BigDecimal("0.05");
		BigDecimal b2 = new BigDecimal("0.01");
		System.out.println(b1.add(b2));
		System.out.println("------------------------");
		
		BigDecimal b3 = new BigDecimal("1.0");
		BigDecimal b4 = new BigDecimal("0.42");
		System.out.println(b3.subtract(b4));
		System.out.println("------------------------");
		
		BigDecimal b5 = new BigDecimal("4.015");
		BigDecimal b6 = new BigDecimal("100");
		System.out.println(b5.multiply(b6));
		System.out.println("------------------------");
		
		BigDecimal b7 = new BigDecimal("123.3");
		BigDecimal b8 = new BigDecimal("100");
		System.out.println(b7.divide(b8));
		System.out.println("------------------------");
		
		BigDecimal b11 = new BigDecimal("1.301");
		BigDecimal b22 = new BigDecimal("100");
		System.out.println(b11.divide(b22,3,BigDecimal.ROUND_HALF_UP));
		System.out.println(b11.divide(b22,8,BigDecimal.ROUND_HALF_UP));
	}
}
















