1. 준비단계
	- 데이터베이스 구축
	- 샘플 데이터 삽입
	- 라이브러리 복사
	- DBManager 생성 
	- VO 객체 생성
		1) 테이블 기준
		2) 뷰페이지 기준 (join 대비) -> 나중에 조인 쿼리를 작성하고 그에 맞춰서 제작
	- DAO 객체 생성 -> 싱글턴
	--------------------------------
2. 화면 구성 - header, footer, nav, section으로 구성이된다.  
	- 
	- include를 이용하는 방법
	- 테뮤ㅡㄹ릿을 만든다음 복붙한다. 
	
	index.jsp => 템플릿으로 만드는 방법을 써볼거임
	index2.jsp => include를 이용해 만드는 방법을 써볼거임 
	
	- 스타일 적용 (가급적 폴더 만들지 말고 작성 권장)
---------------------------
<1> JSP만을 이용하는 방법 - MVC model 1
<2> SERVLET & JSP 을 이용하는 방법 - MVC model 2
-------------------------------
3. 회원 등록 화면
<1> JSP 이용방법 
	(-> 회원번호 처리 : memberRegCustnoJSP.jsp)
	-> 폼페이지 : memberRegJSP.jsp
	-> 폼페이지 데이터 처리 페이지 : memberInsertJSP,jsp
	-> 결과 페이지 : index.jsp
	
<2> servlet이용방법
 	=> 서블릿(+회원번호 처리) : MemberRegServlet 			-> dao.selectNextCustno()
 	=> 폼페이지 : memberRegForm.jsp
 	=> 회원등록 서블릿 : MemberInsertServlet			-> dao.insertMember()
 	=> 결과페이지 : index.jsp
	