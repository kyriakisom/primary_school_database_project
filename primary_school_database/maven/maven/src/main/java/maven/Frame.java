package baseis2;

import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.sql.*;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JTextPane;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.Font;
import java.awt.Color;

public class Frame extends JFrame {

	private JPanel contentPane;
	private Connection connection;
	private JTextPane textPane = new JTextPane();
	
	
	public Frame() {
		
		dbConnection();
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 800, 1000);
		contentPane = new JPanel();
		contentPane.setBackground(new Color(255, 204, 204));
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		textPane.setEditable(false);
		textPane.setFont(new Font("Cambria Math", Font.PLAIN, 15));

		
		textPane.setBounds(10, 10, 299,1000);
		contentPane.add(textPane);

		JButton Erotima1 = new JButton("Erotima 1");
		Erotima1.setBackground(Color.RED);
		
		
		Erotima1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				textPane.setText(" ");
				String query = "SELECT S.name, S.surname,S.class FROM students S  WHERE S.class='Ekti-ST'";
						
				ResultSet rs;

				Statement stnm;
				try {
					stnm = connection.createStatement();
					rs = stnm.executeQuery(query);

					while (rs.next()) {
						textPane.setText(textPane.getText()+"\nname : "+rs.getString("S.name") +" \nsurname : " + rs.getString("S.surname")+" \nclass : " + rs.getString("S.class")+"\n" );
						
					}
				} catch (SQLException e1) {
					
					e1.printStackTrace();
				}

			}
		});
		
		
		Erotima1.setBounds(325, 194, 142, 67);
		contentPane.add(Erotima1);

		JButton Erotima2 = new JButton("Erotima 2");
		Erotima2.setBackground(new Color(255, 153, 0));
		Erotima2.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				textPane.setText(" ");
				String query = "SELECT S.name, S.surname,S.absences FROM students S WHERE S.absences>=2";
				
				ResultSet rs;

				Statement stnm;
				
				try {
					stnm = connection.createStatement();
					rs = stnm.executeQuery(query);

					while (rs.next()) {
						textPane.setText(textPane.getText()+"\nname : "+rs.getString("S.name") +" \nsurname : " + rs.getString("S.surname")+" \nclass : " + rs.getInt("S.absences")+"\n" );
						
					}
				} catch (SQLException e1) {
					
					e1.printStackTrace();
				}
				
			}
		});
		Erotima2.setBounds(477, 194, 142, 67);
		contentPane.add(Erotima2);

		JButton Erotima3 = new JButton("Erotima 3");
		Erotima3.setBackground(Color.PINK);
		Erotima3.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				textPane.setText(" ");
				String query = "SELECT T.name,T.surname,T.tid,C.course FROM teachers T, courses C, teacherscourses TC WHERE TC.cid=C.cid AND TC.tid=T.tid AND C.course='Mathimatika'";
				
				ResultSet rs;

				Statement stnm;
				
				try {
					stnm = connection.createStatement();
					rs = stnm.executeQuery(query);

					while (rs.next()) {
						textPane.setText(textPane.getText()+"\nname : "+rs.getString("T.name") +" \nsurname : " + rs.getString("T.surname")+ "\ncourse id :"+ rs.getInt("T.tid")+"\ncourse name:"+rs.getString("C.course")+"\n" );
						
					}
				} catch (SQLException e1) {
					
					e1.printStackTrace();
				}
				

				
			}
		});
		Erotima3.setBounds(629, 194, 142, 67);
		contentPane.add(Erotima3);

		JButton Erotima4 = new JButton("Erotima 4");
		Erotima4.setBackground(new Color(255, 255, 0));
		Erotima4.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				textPane.setText(" ");
				String query = "SELECT S.name,S.surname,S.class,max(S.absences)as apousies FROM students S GROUP BY S.class";
				
				ResultSet rs;

				Statement stnm;
				
				try {
					stnm = connection.createStatement();
					rs = stnm.executeQuery(query);

					while (rs.next()) {
						textPane.setText(textPane.getText()+"\nname : "+rs.getString("S.name") +" \nsurname : " + rs.getString("S.surname")+ "\nclass :"+ rs.getString("S.class")+"\nMax_Absences :"+rs.getInt("apousies")+"\n" );
						
					}
				} catch (SQLException e1) {
					
					e1.printStackTrace();
				}
				
			}
		});
		Erotima4.setBounds(325, 271, 142, 67);
		contentPane.add(Erotima4);

		JButton Erotima5 = new JButton("Erotima 5");
		Erotima5.setBackground(new Color(173, 255, 47));
		Erotima5.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				textPane.setText(" ");
				String query = "SELECT T.tid as id, T.name,T.surname,T.specialty,T.workagr, AVG(T.workhours) mesos_oros ,C.course FROM teachers T, courses C,teacherscourses Tc WHERE  Tc.cid=C.cid AND Tc.tid=T.tid AND T.specialty='Daskalos' AND T.workagr='Monimos' GROUP BY  T.birthdate ORDER BY T.birthdate";
				
				ResultSet rs;

				Statement stnm;
				
				try {
					stnm = connection.createStatement();
					rs = stnm.executeQuery(query);

					while (rs.next()) {
						textPane.setText(textPane.getText()+"\ntid : "+rs.getInt("id") +" \nname : " + rs.getString("T.name")+ "\nsurname :"+ rs.getString("T.surname")+"\nspecialty :"+ rs.getString("T.specialty")+"\nWorkagr :"+rs.getString("T.workagr")+"\nAverage :"+rs.getFloat("mesos_oros")+"\n" );
						
					}
				} catch (SQLException e1) {
					
					e1.printStackTrace();
				}
			}
		});
		Erotima5.setBounds(477, 271, 142, 67);
		contentPane.add(Erotima5);

		JButton Erotima6 = new JButton("Erotima 6");
		Erotima6.setBackground(new Color(0, 255, 0));
		Erotima6.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				textPane.setText(" ");
				String query = "SELECT S.name,S.surname,S.class,C.course,GTC.grade FROM students S,gradetab GT,gradetabcourse GTC,courses C WHERE S.sid=GT.sid AND GT.gtid=GTC.gtid AND GTC.cid=C.cid AND C.course='Glossa' AND GTC.grade BETWEEN 5 AND 10 ORDER BY S.class,GTC.grade";
				
				ResultSet rs;

				Statement stnm;
				
				try {
					stnm = connection.createStatement();
					rs = stnm.executeQuery(query);

					while (rs.next()) {
						textPane.setText(textPane.getText()+"name : "+rs.getString("S.name")+"\nsurname :"+rs.getString("S.surname")+"\nclass :"+rs.getString("S.class")+"\nclass : "+rs.getString("C.course")+"\ngrade : "+rs.getInt("GTC.grade")+"\n\n" );
						
					}
				} catch (SQLException e1) {
					
					e1.printStackTrace();
				}
				
			}
		});
		Erotima6.setBounds(629, 271, 142, 67);
		contentPane.add(Erotima6);

		JButton Erotima7 = new JButton("Erotima 7");
		Erotima7.setBackground(new Color(0, 191, 255));
		Erotima7.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				textPane.setText(" ");
				textPane.setFont(new Font("Cambria Math", Font.PLAIN, 9));
				String query = "SELECT teachers.tid as id, name,surname,specialty, courses.course FROM ((teacherscourses INNER JOIN courses on teacherscourses.cid=courses.cid) INNER JOIN teachers on teacherscourses.tid=teachers.tid) ORDER BY id";
				
				ResultSet rs;

				Statement stnm;
				
				try {
					stnm = connection.createStatement();
					rs = stnm.executeQuery(query);

					while (rs.next()) {
						textPane.setText(textPane.getText()+"\ntid : "+rs.getInt("id")+"\nname : "+rs.getString("name") 
						+"\nsurname : "+rs.getString("surname")+"\nspecialty : "+rs.getString("specialty")+"\ncourse :"+
								rs.getString("courses.course")+"\n");
						
					}
				} catch (SQLException e1) {
					
					e1.printStackTrace();
				}
				
			}
		});
		Erotima7.setBounds(325, 348, 142, 67);
		contentPane.add(Erotima7);

		JButton Erotima8 = new JButton("Erotima 8");
		Erotima8.setBackground(new Color(0, 0, 255));
		Erotima8.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				textPane.setText(" ");
				String query = "SELECT SH.hname as Aithousa ,C.course as Mathima,avg (GTC.grade) as MO FROM studentschalls SH, courseschalls CH,gradetabcourse GTC, courses C  WHERE SH.hname = CH.hname AND CH.cid=C.cid AND C.cid=GTC.cid AND SH.hname='Aithousa A' AND C.course='Glossa' ";
				
				ResultSet rs;

				Statement stnm;
				
				try {
					stnm = connection.createStatement();
					rs = stnm.executeQuery(query);

					while (rs.next()) {
						textPane.setText(textPane.getText()+"\nAithousa : "+rs.getString("Aithousa")+"\ncourse : "+rs.getString("Mathima") 
						+"\nAverage : "+rs.getFloat("MO") + "\n");
						
					}
				} catch (SQLException e1) {
					
					e1.printStackTrace();
				}
				
				
				
			}
		});
		Erotima8.setBounds(477, 348, 142, 67);
		contentPane.add(Erotima8);

		JButton Erotima9 = new JButton("Erotima 9");
		Erotima9.setBackground(new Color(204, 0, 102));
		Erotima9.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				textPane.setText(" ");
				String query = "SELECT S.name,S.surname,S.class,min(GTC.grade) as Min_grade FROM students S , gradetabcourse GTC WHERE S.class='Ekti-ST'";
				
				ResultSet rs;

				Statement stnm;
				
				try {
					stnm = connection.createStatement();
					rs = stnm.executeQuery(query);

					while (rs.next()) {
						textPane.setText(textPane.getText()+"\ntid : "+rs.getString("S.name")+"\nsurname : "+rs.getString("S.surname")+"\nsclass : "+rs.getString("S.class")+"\nMin_Grade : "+rs.getInt("Min_grade") +"\n");
						
					}
				} catch (SQLException e1) {
					
					e1.printStackTrace();
				}
				
				
			}
		});
		Erotima9.setBounds(629, 348, 142, 67);
		contentPane.add(Erotima9);

		JButton Erotima10 = new JButton("Erotima 10");
		Erotima10.setBackground(new Color(138, 43, 226));
		Erotima10.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				
				textPane.setText(" ");
				String query = "SELECT T.tid as id,T.name as name,T.surname as surname,T.address as address FROM teachers T WHERE (T.address='Sofouli 3' OR T.address='Diogenous 5') UNION SELECT S.sid,S.name,S.surname,S.address FROM students S WHERE (S.address='Sofouli 3' OR S.address='Diogenous 5') ";
				
				ResultSet rs;

				Statement stnm;
				
				try {
					stnm = connection.createStatement();
					rs = stnm.executeQuery(query);

					while (rs.next()) {
						textPane.setText(textPane.getText()+"\ntid : "+rs.getInt("id")+"\nname: "+rs.getString("name")+"\nsurname : "+rs.getString("surname")+"\naddress : "+rs.getString("address")+"\n");
						
					}
				} catch (SQLException e1) {
					
					e1.printStackTrace();
				}
				
				
			}
		});
		Erotima10.setBounds(477, 422, 142, 67);
		contentPane.add(Erotima10);
		
	}

	public void dbConnection() {

		try {

			String driver = "com.mysql.cj.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/dimotiko_sxoleio";
			String username = "root";
			String password = "";

			connection = DriverManager.getConnection(url, username, password);

			Class.forName(driver);

			//

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public static void main(String[] args) {
		
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Frame frame = new Frame();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
}
