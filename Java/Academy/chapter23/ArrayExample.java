package chapter23;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ArrayExample {
	public static void main(String[] args) {
		//�÷��� ����
		//<>-���׸�-������ ������ Ÿ��
		//�⺻������ Ÿ��(x),����Ŭ����
		ArrayList<Integer> intList=new ArrayList<>();
//		ArrayList<String> strList=new ArrayList<String>();
		String[] strArr=new String[20];
		//Vector �ڹ� 1.3���Ͽ��� ���, ��� ����
		//���� ���� ��ŭ �ڵ����� ������ �þ��� �پ��� �մϴ�
		//�ڹ� �迭(X) �÷��Ǹ� ����
		List<String> strList1=new ArrayList<>();
		ArrayList<String> strList=new ArrayList<>();
		//����
//		strList.add(1);
		strList.add("Toy");
		String box="Box";
		strList.add(box);
		strList.add(new String("Robot"));
		strList.add("doll");
		strList.add("Toy");
//		System.out.println(strList.size());
		
		//����-���
		for(int i=0;i<strList.size();i++) {
			System.out.println(strList.get(i));
		}
		
		//����
		strList.remove(4);
		for(int i=0;i<strList.size();i++) {
			System.out.println(strList.get(i));
		}
		
		System.out.println("foreach");
		for(String s:strList) {
			System.out.println(s);
		}
		
		System.out.println("iterator");
		//���ͷ����� ��� - �ݺ���
		Iterator<String> itr=strList.iterator();
		while(itr.hasNext()) {
			System.out.println(itr.next());
		}
	}
}













