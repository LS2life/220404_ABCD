package chapter20;

import java.util.ArrayList;
import java.util.Random;
import java.util.Scanner;

public class NumRandom2 {
    /*
    public void main(String[] args) {
        Random ran = new Random();
        Scanner sc = new Scanner(System.in);
        int num1;
        int num2;

        System.out.println("����ڰ� �Է��� ���� A�� B���̿� �ִ� ���� 10����");
        System.out.println("�������� ����ϴ� ���α׷��Դϴ�.");
        while (true) {
            System.out.print("ù�� ° ���� �Է� : ");
            num1 = sc.nextInt();
            System.out.print("�ι� ° ���� �Է� : ");
            num2 = sc.nextInt();

            if (num1 > num2) {
                System.out.println("�ι� ° �Է� ������ ù�� ° �Է� �������� Ŀ���մϴ�.");
                System.out.println("�ٽ� �Է��� �ּ���.");
                continue;
            }
            else {
                for (int i = 0; i < 10; i++) {
                    System.out.println(ran.nextInt(num1, num2));
                }
            }
            return;
        }
    }

    public static void main(String[] args) {
        Random ran = new Random();
        Scanner sc = new Scanner(System.in);
        int num1;
        int num2;

        System.out.println("����ڰ� �Է��� ���� A�� B���̿� �ִ� ���� 10����");
        System.out.println("�������� ����ϴ� ���α׷��Դϴ�.");

        System.out.print("ù�� ° ���� �Է� : ");
        num1 = sc.nextInt();
        System.out.print("�ι� ° ���� �Է� : ");
        num2 = sc.nextInt();

        if (num1 > num2) {
            for (int i = 0; i < 10; i++) {
                System.out.println(ran.nextInt(num2, num1));
            }
        } else {
            for (int i = 0; i < 10; i++) {
                System.out.println(ran.nextInt(num1, num2));
            }
        }
    }


    public static void main(String[] args) {
        Random ran = new Random();
        Scanner sc = new Scanner(System.in);
        ArrayList<Integer> intArr= new ArrayList<>();
        int num1;
        int num2;
        int ranVal1;
        int ranVal2;

        System.out.println("����ڰ� �Է��� ���� A�� B���̿� �ִ� ���� 10����");
        System.out.println("�������� ����ϴ� ���α׷��Դϴ�.");

        System.out.print("ù�� ° ���� �Է� : ");
        num1 = sc.nextInt();
        System.out.print("�ι� ° ���� �Է� : ");
        num2 = sc.nextInt();

        if (num1 > num2) {
            for (int i = 0; i < 10; i++) {
                ranVal1 = ran.nextInt(num2, num1);
                intArr.add(ranVal1);
                System.out.println(intArr.get(i));

                for (int j = 0; j < i; j++) {
                    ranVal2 = ran.nextInt(num2, num1);
                    intArr.add(ranVal2);

                    if (ranVal1 == ranVal2) {
                        break;
                    } else {
                        System.out.println(ranVal2);
                    }
                }
            }
        }
        else {
            for (int i = 0; i < 10; i++) {
                ranVal1 = ran.nextInt(num1, num2);
                intArr.add(ranVal1);

                for (int j = 0; j < i; j++) {
                    ranVal2 = ran.nextInt(num1, num2);
                    intArr.add(ranVal2);

                    if (ranVal1 == ranVal2) {
                        --i;
                        break;
                    }
                }
            }
            System.out.println(intArr);
        }
    }
   */


    public static void main(String[] args) {
        Random ran = new Random();
        Scanner sc = new Scanner(System.in);
        ArrayList<Integer> intArr = new ArrayList<>();
        int num1, num2;
        int val1, val2;
        int ranVal1, ranVal2;

        System.out.println("����ڰ� �Է��� ���� A�� B���̿� �ִ� ���� 10����");
        System.out.println("�������� ����ϴ� ���α׷��Դϴ�.");

        System.out.print("ù�� ° ���� �Է� : ");
        num1 = sc.nextInt();
        System.out.print("�ι� ° ���� �Է� : ");
        num2 = sc.nextInt();

        if (num1 > num2) {
            int i;
            for (i = 0; i < 10; i++) {
                ranVal1 = num2;
                ranVal1 += ran.nextInt(num1 - num2 + 1);
                //���� �迭 ����
                intArr.add(ranVal1);
                //�ߺ� üũ
                for (int j = 0; j < i; j++) {
                    if (intArr.get(j) == ranVal1) {
                        System.out.println("���� " + ranVal1);
                        intArr.remove(intArr.size() - 1);
                        i--;
                    } else {
                        break;
                    }
                }
            }
        }
        else {
            for (intArr.size(); intArr.size() < 10; ) {
                ranVal1 = ran.nextInt(num1, num2);      // ���� �� ���� ��
                intArr.add(ranVal1);                    // ������ �迭�� ����.

                for (intArr.size(); intArr.size() < 10; ) {     //
                    ranVal2 = ran.nextInt(num1, num2);
                    intArr.add(ranVal2);

                    if (ranVal1 == ranVal2) { //intarr.get() ??
                        intArr.remove(intArr.size() - 1);
                    } else {
                        break;
                    }
                }
            }
        }
        System.out.println(intArr);
    }
}

// String generatedString = toString

//�ߺ� ����
//���ڿ� ������ �迭
//���ڿ� ���� Ư�������� ������ �迭

