package chapter31;

import java.time.LocalDate;

public class LocalDateExample {
	public static void main(String[] args) {
		//����
		LocalDate today=LocalDate.now();
		System.out.println(today);
		//Ư���� ��
		String xmax1="2022-12-25";
		LocalDate xmas=LocalDate.of(today.getYear(), 12, 25);
		System.out.println(xmas);
		System.out.println(today.getYear());
		//�̺�
		LocalDate eve=xmas.minusDays(1);
		System.out.println(eve);
		//���ú��� 1�� - 100��
		LocalDate hundredDay=today.plusDays(100);
		System.out.println(hundredDay);
		
		
	}

}




