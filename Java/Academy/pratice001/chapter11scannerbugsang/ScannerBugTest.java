package chapter11scannerbugsang;

import java.util.Scanner;

public class ScannerBugTest {

//	public static void main(String[] args) {
//		Scanner scanner=new Scanner(System.in);			// Input   constructor scanner
//
//		System.out.print("���� �Է� : ");					// Input integer
//		int num1=scanner.nextInt();
//
//		System.out.print("���ڿ� �Է� : ");				// Input spring
//		String str1=scanner.nextLine();
//
//		System.out.println("�Է¹��� ���� : "+num1+"\n" +	// Console Result
//				"�Է¹��� ���ڿ� : " + str1);
//	}


	/* ����ǵ�>
		Instance 	���� �Է� : 6
					���ڿ� �Է� : �ڹ�
					�Է¹��� ���� : 6
					�Է¹��� ���ڿ� : �ڹ�

		Actual Result	���� �Է� : 6
						���ڿ� �Է� : �Է¹��� ���� : 6
						�Է¹��� ���ڿ� :

		Intuitive trouble	System.in ?
							println ?
							nextInt, nextLine ?
							num1, str1 ??
	 */


//	1	
//	public static void main(String[] args) {
//       System.out.println(System.in);
//       System.out.println(args);
//
//       int nextInt = (6);
//       System.out.println(nextInt);
//       int nextLine = (2);
//       System.out.println(nextLine);
//
//
//       //String nextInt = ("�ڹ�");    //java: variable nextInt is already defined in method main(java.lang.String[])
//
//       //String nextLine = ("�ڹ�");


//	2
//	public static void main(String[] args) {
//		System.out.println(args);
//		System.out.println(System.in);
//		java.util.Scanner sc = new Scanner(System.in);
//		System.out.println(sc);

	
	
//	3
//	public static void main(String[] args) {
//		Scanner sc = new Scanner(System.in);
//
//		System.out.print("���� �Է� : ");
//		int num1 = sc.nextInt();
//		System.out.println(num1);
//
//		System.out.print("���ڿ� �Է� : ");
//		String str1 = sc.nextLine();			// Integer input pass
//		System.out.println(str1);
//	}


	
//	4
//	public static void main(String[] args) {	// No issue
//		Scanner sc = new Scanner(System.in);
//
//		System.out.print("���ڿ� �Է� : ");
//		String str1 = sc.nextLine();
//		System.out.println(str1);
//
//		System.out.print("���� �Է� : ");
//		int num1 = sc.nextInt();
//		System.out.println(num1);
//	}


	
//	5
//	public static void main(String[] args) {			// No issue
//		Scanner sc = new Scanner(System.in);
//
//		System.out.print("���ڿ� �Է� : ");
//		String str1 = sc.nextLine();
//		System.out.println("�Է¹��� ���ڿ� : " + str1);
//
//		System.out.print("���ڿ� �Է� 2 : ");
//		String str2 = sc.nextLine();
//		System.out.println("�Է¹��� ���ڿ� : " + str2);
//	}


	
//	6
//	public static void main(String[] args) {			//No issue
//		Scanner sc = new Scanner(System.in);
//		System.out.print("���� �Է� : ");
//		int num1 = sc.nextInt();
//		System.out.println(num1);
//
//		System.out.print("���� �Է� 2 : ");
//		int num2 = sc.nextInt();
//		System.out.println(num2);
//	}


	
//	7
//	public static void main(String[] args) {            //No issue
//		Scanner sc = new Scanner(System.in);
//
//		System.out.print("���� �Է� : ");
//		int num1 = sc.nextInt();
//		System.out.println(num1);
//
//		System.out.print("���� �Է� 2 : ");
//		int num2 = sc.nextInt();
//		System.out.println(num2);
//
//		System.out.print("���ڿ� �Է� : ");		// Integer input pass
//		String str1 = sc.nextLine();
//		System.out.println("�Է¹��� ���ڿ� : " + str1);
//	}


	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("���� �Է� : ");
		int num1 = sc.nextInt();
		System.out.println(num1);
		
		System.out.println("���ڿ� �Է� : ");
		String str1 = sc.nextLine();
		System.out.println(str1);
		
		
	}
	
/*	
 * 
 * 	nextInt >
	Scans the next token of the input as an int. 
	An invocation of this method of the form nextInt() behaves in exactly the same way as theinvocation nextInt(radix), 
	where radixis the default radix of this scanner.

	�Է��� ���� ��ū�� int�� �˻��մϴ�.
	nextInt() ������ �� �޼��带 ȣ���ϸ� nextInt(radix) ȣ��� ��Ȯ�� ���� ������� �����մϴ�.
	���⼭ radix�� �� ��ĳ���� �⺻ ����Դϴ�.
	
	
	nextLine >
	Advances this scanner past the current line and returns the inputthat was skipped.
	This method returns the rest of the current line, excluding any lineseparator at the end.
	The position is set to the beginning of the nextline. 
	Since this method continues to search through the input lookingfor a line separator,
	it may buffer all of the input searching forthe line to skip if no line separators are present.
	
	�� ��ĳ�ʸ� ���� �� ���� �̵��ϰ� �ǳʶ� �Է��� ��ȯ�մϴ�.�� �޼���� ���� �� <���� ��ȣ>�� ������ ���� ���� ������ �κ��� ��ȯ�մϴ�.
	��ġ�� <���� ��>�� ���� �κ����� �����˴ϴ�.
	�� �޼���� ���� �����ڸ� ã�� �Է��� ��� �˻��ϱ� ������ ���� �����ڰ� ���� ��� �� �ٲ��� �˻��ϴ� ��� �Է��� ���۸��� �� �ֽ��ϴ�.
		

*/
	
	
	//nextLine �� �ι� ����ϴ� ����� �ִٴ� ���� �˰� ������
	
	//nextInt �� �Է��ڰ� nextLine�� �Էµȴٴ� ���� ���� �� �� �ִ� �����?
	
	
}