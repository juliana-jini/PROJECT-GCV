<%@page import="java.util.Random"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.internet.AddressException"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="java.util.Date"%>
<%@page import="javax.mail.Session"%>
<%@page import="vo.Mail"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 
 	request.setCharacterEncoding("UTF-8");
 	Random random = new Random();
 	int i = random.nextInt(899999)+100000;
 	String mail=request.getParameter("mail");
 	request.setAttribute("mail", mail);
    Properties p = System.getProperties();
    p.put("mail.smtp.starttls.enable", "true");     // gmail은 true 고정
    p.put("mail.smtp.host", "smtp.naver.com");      // smtp 서버 주소
    p.put("mail.smtp.auth","true");                 // gmail은 true 고정
    p.put("mail.smtp.port", "587");                 // 네이버 포트
    p.put("mail.smtp.port", "587");                 // 네이버 포트
    p.put("mail.smtp.ssl.protocols", "TLSv1.2");   
    Authenticator auth = new Mail();
    //session 생성 및  MimeMessage생성
    Session session2 = Session.getDefaultInstance(p, auth);
    MimeMessage msg = new MimeMessage(session2);
     
    try{
        //편지보낸시간
        msg.setSentDate(new Date());
        InternetAddress from = new InternetAddress() ;
        from = new InternetAddress("dldydgkr96@naver.com"); //발신자 아이디
        // 이메일 발신자
        msg.setFrom(from);
        // 이메일 수신자
        InternetAddress to = new InternetAddress(mail);
        msg.setRecipient(Message.RecipientType.TO, to);
        // 이메일 제목
        msg.setSubject("인증번호 안내 입니다.", "UTF-8");
        // 이메일 내용
        msg.setText("다음 숫자 6자리를 입력란에 입력해 주세요 : "+Integer.toString(i), "UTF-8");
        // 이메일 헤더
        msg.setHeader("content-Type", "text/html");
        //메일보내기
        javax.mail.Transport.send(msg, msg.getAllRecipients());
         
    }catch (AddressException addr_e) {
        addr_e.printStackTrace();
    }catch (MessagingException msg_e) {
        msg_e.printStackTrace();
    }catch (Exception msg_e) {
        msg_e.printStackTrace();
    }
    request.setAttribute("number", i);
   
    pageContext.forward("Mail_form.jsp");

 	%>
 	
 	