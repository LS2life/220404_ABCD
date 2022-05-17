package chapter31;

import java.time.LocalDate;
import java.time.Period;

public class PeriodExample {
	public static void main(String[] args) {
		//���� ���� ũ������������ ��ĥ?
		//����
		LocalDate today=LocalDate.now();
		System.out.println(today);
		//�� ���� ũ��������
		LocalDate xmas=LocalDate.of(today.getYear(), 12, 25);
		System.out.println(xmas);
		
		//ũ������������ ��ĥ?
		Period left=Period.between(today, xmas);
		System.out.println(left.getMonths()+"��"+
				left.getDays()+"��");
		
	}

}






