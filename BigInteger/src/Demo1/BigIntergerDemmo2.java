package Demo1;

import java.math.BigInteger;

/**
 * public BigInteger add(BigInteger val)        �ӷ�
 * public BigInteger subtract(BigInteger val)   ����
 * public BigInteger multiply(BigInteger val)   �˷�
 * public BigInteger divide(BigInteger val)     ����
 * public BigInteger[] divideAndRemainder(BigInteger val)   �����̺�����������
 */
public class BigIntergerDemmo2 {
	public static void main(String[] args) {
		BigInteger b1 = new BigInteger("200");
		
		BigInteger b2 = new BigInteger("100");
		
		//public BigInteger add(BigInteger val)        �ӷ�
		System.out.println(b1.add(b2));
		
//		public BigInteger subtract(BigInteger val)   ����
		System.out.println(b1.subtract(b2));
		
//		public BigInteger multiply(BigInteger val)   �˷�
		System.out.println(b1.multiply(b2));
		
//		public BigInteger divide(BigInteger val)     ����
		System.out.println(b1.divide(b2));
		 	
//		public BigInteger[] divideAndRemainder(BigInteger val)   �����̺�����������
		BigInteger[] divideAndRemainder = b1.divideAndRemainder(b2);
		System.out.println("���ǣ�"+divideAndRemainder[0]+"��������"+divideAndRemainder[1]);
	
	
	}
}
