package chapter31;

import java.time.Duration;
import java.time.Instant;

public class InstantClass {
	public static void main(String[] args) {
		//���� �ð�
		Instant start=Instant.now();
		//UTC ǥ�ؽð�
		System.out.println(start);
		//1970-01-01 00:00:00 ������ �ð��� �� ���� ���
		System.out.println(start.getEpochSecond());
		for(int i=0;i<100;i++) {
			i+=i;
		}
		Instant end=Instant.now();
		System.out.println(end.getEpochSecond());
		
		Duration between=Duration.between(start, end);
		//�и��� 1��=1000�и���
		System.out.println("�и� �� ���� ��: "+between.toMillis());
		//0.017��
	}
	
}















