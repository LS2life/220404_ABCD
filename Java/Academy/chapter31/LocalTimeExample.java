package chapter31;

import java.time.Duration;
import java.time.LocalTime;

public class LocalTimeExample {
	public static void main(String[] args) {
		//���� �ð�
		LocalTime now=LocalTime.now();
		System.out.println(now);
		//4�ð� 10�� �Ŀ� ���
		LocalTime mt=now.plusHours(4);
		mt=mt.plusMinutes(10);
		System.out.println(mt);
		LocalTime mt1=now;
		mt1=mt1.plusHours(4);
		mt1=mt1.plusMinutes(10);
		
		//���� �ð�
		//���� �ð�
		LocalTime now1=LocalTime.now();
		System.out.println(now1);
		//���� �ð�
		LocalTime lunchTime=LocalTime.of(16, 40);
		//�νð��� �� Duration
		Duration between=Duration.between(now1, lunchTime);
		System.out.println(between);
		System.out.println(between.toHours());
		System.out.println(between.toMinutes());
	}

}



