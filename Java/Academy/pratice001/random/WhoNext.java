package random;

import java.util.Random;

public class WhoNext {
	
	public static void main(String[] args) {
		Random random=new Random();
		int popNum=3;
		int interval=3;
		String[] nameArr= {
				"�ǰǸ�","�ݵ���","�賲��","�輼ȯ","�迩��",
				"����","���ƶ�","������","�����","������",
				"�̻��","������","����õ","�־Ƹ�","�ǰ�ȿ"
		};
		int[] choicedNum=new int[nameArr.length];
		for(int i=0;i<nameArr.length;i++) {
			int temp=random.nextInt(nameArr.length);
			choicedNum[i]=temp;
			for(int x=0;x<i;x++) {
				if(choicedNum[x]==temp) {
					i--;
					continue;
				}
				
			}
		}
		
		for(int i=0;i<popNum;i++) {
			int time=interval;
			for(int j=0;j<interval;j++) {
				System.out.println("��÷ "+time--+"����...");
				try {
					Thread.sleep(1000);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
			System.out.println(
					(i+1)+"��   "+nameArr[choicedNum[i]]);
		}
	}
}
