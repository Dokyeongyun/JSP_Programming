<%@page import="marketKurly.managerDAO"%>
<%@page import="marketKurly.itemDTO"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
request.setCharacterEncoding("UTF-8");

String realFolder="";
String filename="";
MultipartRequest imageup = null;

String saveFolder="marketKurly/img";
String encType = "utf-8";
int max_size=2 * 1024 * 1024;	

ServletContext context = getServletContext();
realFolder = context.getRealPath(saveFolder);

try{
	imageup = new MultipartRequest(request, realFolder, max_size,encType, new DefaultFileRenamePolicy());
	Enumeration files = imageup.getFileNames();
	
	while(files.hasMoreElements()){
		String name =(String)files.nextElement();
		filename = imageup.getFilesystemName(name);
	}


}catch(Exception e){
	e.printStackTrace();
}

	String item_name = imageup.getParameter("name");
	String item_category = imageup.getParameter("category");
	String item_price = imageup.getParameter("price");
	String item_stock = imageup.getParameter("stock");
	String item_info = imageup.getParameter("info");
	String discount_rate = imageup.getParameter("discountRate");
	
	itemDTO dto = new itemDTO();
	dto.setItem_category(item_category);
	dto.setItem_name(item_name);
	dto.setItem_price(Integer.parseInt(item_price));
	dto.setItem_stock(Integer.parseInt(item_stock));
	dto.setItem_info(item_info);
	dto.setDiscount_rate(Integer.parseInt(discount_rate));
	
	if(filename!=null){
		dto.setItem_image(filename);
	}else{
		dto.setItem_image("error.jpg");
	}
	
	managerDAO.instance.insertNewItem(dto);
	response.sendRedirect("00_shopMain.jsp?center=28_itemInfoUpdate.jsp");
%>
</body>
</html>