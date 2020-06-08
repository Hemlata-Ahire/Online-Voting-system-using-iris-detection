<%@page import="java.sql.*" %>
<%@page import="org.jfree.chart.plot.PlotOrientation"%>
<%@page import="org.jfree.chart.ChartUtilities"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.data.category.DefaultCategoryDataset"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.OutputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%


String place=request.getParameter("place");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/online","root","");
PreparedStatement query=con.prepareStatement("SELECT candidate_name, party_place,party_symbol,party_name,COUNT(*)Total_Vote FROM vote WHERE party_place='"+place+"' GROUP BY candidate_name ORDER BY Total_vote DESC; ");
ResultSet rs=query.executeQuery();
OutputStream out1 = response.getOutputStream(); 
DefaultCategoryDataset bar = new DefaultCategoryDataset();

while(rs.next())
{
		String candidate=rs.getString("candidate_name");
		String party_name=rs.getString("party_name");
		String party_symbol=rs.getString("party_symbol");
		int Total_vote=rs.getInt("Total_vote");

		
		bar.addValue(Total_vote,party_name,party_name);	
} 

	JFreeChart BarChartObject=ChartFactory.createBarChart("Over all Vote Prediction"," '"+place+"' ","Percentage",bar,PlotOrientation.VERTICAL,true,true,false);
	response.setContentType("image/png");
	ChartUtilities.writeChartAsPNG(out1, BarChartObject, 1200, 600);




%> 