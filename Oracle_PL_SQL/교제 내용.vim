원론 :
    DBMS :  Data Base Managerment System
    sql	 :	Structured Query Language
    SID	:	Oracle XE 의 시스템 ID

    select *from tab;
        HR 사용자의 테이블과 뷰 확인

    스키마 = 사용자 
        :사용자를 구성하면 자동으로 저장소 구성

    롤(Role, 역할) 최고역할은 DBA
        : 일반적인 사용자는 CONNECT, RESOURCE를 부여하면
        자신의 스키마에 대한 대부분의 작업을 수행가능

    char		영문 고정형 byte 2배 
    varchar2	영문 가변형 byte 2배
    nchar		한글(Unicode UCS-2) 고정형 
    nvarchar2	한글(Unicode UCS-2) 가변형 
    Integer		숫자
    number		숫자
    date		날짜


!!??	CLI에서 System, hr 등의 스키마 접속 방법.

스키마 접속 :
	sql>	CONNECT 사용자/비번@DB이름(또는SID)

		System에 접속시 스키마 생성 :
		sql>	create user 사용자명 identified by 비밀번호;

		기본테이블 user :
		sql>	default tablespace user;

		임시테이블 temp :
		sql>	temporary tablespace temp;

		권한부여 :
		sql>	grant 권한, 권한, 권한 to 데이터베이스명

	
	cmd에서 스키마 접속 :
	sql>	sqlplus 사용자/비번@DB명(또는 SID)
	
	현재사용자 출력 :
	sql>	show user


파일저장 .sql :
	sql>	save c:/경로명/경로명
	
	sql을 종료하지 않고 운영체제로 빠져나가기 :
	sql>	host
		//경로로가서 저장된 파일을 확인할 수 있다.
	
	*.sql 파일목록 확인 :
	c:\>	dir c:\경로명\파일명*.sql

	파일내용을 화면에 출력 linux의 cat 명령과 동일 :
	c:\>	type c:\경로명\파일명.sql 

	host로 나간후 다시 sql로 돌아오기 :
	c:\>	exit

	파일실행 
	sql>	start c:\경로명\파일명.sql 		#start대신 @사용가능


파일저장 SPOOL *.lst :
	저장시작 :
	sql:> spool c:\경로명\경로명
		~~결과화면~~
	
	자장종료 :
	sql>	spool off

	host

	메모장에서 spool파일 열기 :
	c:\>	notepad c:\경로명\파일명.lst

	sql로 돌아가기 :
	c:\>	exit


테이블 생성 :
	sql>	create table 테이블명(매개변수명 타입, 매개변수명 타입(사용량));
	
	테이블 구조 :
	sql>	describe 테이블명	#desc 로 사용가능


	테이블 데이터 입력 :
	sql> 	insert into 테이블명(열1,열2) values( 값, 변수명);

		시퀀스 _ 순차적을 값이 증가하는 데이터베이스 생성 :
		sql>	create sequence idseq
					start with 1	// 시작값
					increment by 1;	// 증가값
		sql>	insert into 테이블명 values(idseq.nextval, '

		데이터 수정 :
		sql>	update 테이블명
					set 열1=값1, 열2=값2 ...
					where 조건 ;
				// where를 생략하면 전체행이 변경.

		데이터 삭제 :
		sql>	delete from 테이블명 where 조건 ;

		되돌리기 :
		sql>	rollback;


테이블 데이터 조회(출력) :
	sql>	select 필드명 from 테이블명 where 조건식;
		// 관계연산자 사용가능

		연속적인(continuous) 범위 값 조회 :
		sql>	between 값 and 값;
			// 예) 183 and 190;

		이산적인(discrete) 범위 값 조회 :
		sql>	in(값, 값)
			// 예) in('경남', '부산', '대구') =any와 같다

		문자열 내용검색 : 
		sql>	like '김%'
			// 김 뒤에 무엇이든 허용한다.
		sql>	like '_혜수'
			// 혜수 앞 한글자만 허용

		서브쿼리(subquery) : 
		sql> 	select username, height from usertbl 
			where height > (select height from usertbl where username = '김경호');
			any (subquery) :
			sql>	>= any()
				// or의 개념  크거나 같은 사람 모두 출력 in()과 같다

			all (subquery) :
			sql>	>= all()
				// and의 개념

			순서대로 정렬하여 출력 :
			sql>	select username, mdate from usertbl order by mdate asc;
				// 오름차순ascending 정렬 abcd순 기본값이라 안써도 무방
				
				내림차순 정렬 :
				sql>	order by mdate desc;
					// 내림차순descending 정렬 zyxwv순

			중복된 값은 하나만 남기고 보여줌 :
			sql>	select distinct addr from usertbl;
	
테이블 복사 :
	sql>	create table 새로운테이블 as (select 복사열 from 기존 테이블명)
		// 제약조건이 있는 문장은 복사되나 제약조건은 복사되지 않는다.
	
	그룹화?? :
	sql>	~	group by ~ 

	집계함수 :
		합산 :	sql>	sum()
		평균 :	sql>	avg()
		최소 :	sql>	min()
		최대 :	sql>	max()
		행의 개수 :	sql>	count()
		행의 개수(중복1개만 인정) :	sql>	count(distinct)
		표준편차 :	sql>	stdev()
		분산 :	sql>	variance()

	중간합계 :
	sql> rollup()

테이블 칼럼(열) 별칭 :
    select 칼럼 별칭 from 테이블명;
