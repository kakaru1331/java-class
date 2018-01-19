package com.himart.seoul.func;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import com.himart.seoul.db.Database;
import com.himart.seoul.func.ext.Product;
import com.himart.seoul.func.intf.ProductIntf;

public class EditProd extends Product implements ProductIntf {

	@Override
	public void doIt() throws Exception {		
		Scanner scan = new Scanner(System.in);
		
		System.out.println("������ ǰ���� ��ȣ�� �Է��ϼ���.");
		String prodNum = scan.nextLine();
		int idx = Integer.parseInt(prodNum);
		
		
		System.out.println("���� ȸ�縦 �Է��ϼ���.");		
		String company = scan.nextLine();
		
		System.out.println("��ǰ���� �Է��ϼ���.");
		String product = scan.nextLine();
		
		System.out.println("������ �Է��ϼ���.");
		String price = scan.nextLine();
		
		Map map = new HashMap();
		map.put("company", company);
		map.put("product", product);
		map.put("price", price);
		Database.list.set(idx-1, map);
		
		super.print();
	}
	
}