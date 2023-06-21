

grant all privileges on project01_db.* to munho@localhost with grant 
option; 
flush PRIVILEGES;
create database project01_db;
create user 'hunmyeong'@'localhost' identified BY '8524';
grant all privileges on project01_db.* to hunmyeong@localhost with grant 
option; 
flush PRIVILEGES;
grant all privileges on project01_db.* to seohyun@localhost with grant 
option; 
flush PRIVILEGES;

CREATE TABLE member (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(255) NOT NULL,
  phone_number VARCHAR(20) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);


INSERT INTO member (name, email, password, phone_number) VALUES
('홍서현', 'seohyun@test.com', 'password1', '010-1234-5678'),
('강문호', 'rkdans113@naver.com', '1111', '010-8637-1685'),
('박훈명', 'hunmyung@test.com', 'password3', '010-3456-7890'),
('김신영', 'sinyoung@test.com', 'password4', '010-4567-8901'),
('임승진', 'seungjin@test.com', 'password5', '010-5678-9012'),
('관리자', 'admin@CodeGrow.com', 'password', '010-1111-1111');

select * from member;

# 게시판
CREATE TABLE board (
  id INT(11) NOT NULL AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  author_id INT(11) NOT NULL, # 멤버아이디
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  FOREIGN KEY (author_id) REFERENCES member(id)
);
INSERT INTO board (title, content, author_id)
VALUES 
('HTML/CSS에 대한 질문', 'HTML과 CSS는 웹 페이지의 구조와 디자인을 담당하는 기술입니다.', 2),
('JS에 대한 질문', 'JavaScript는 웹 페이지를 동적으로 만들기 위한 언어입니다.', 4),
('DB에 대한 질문', 'DB는 데이터를 저장하고 관리하기 위한 시스템입니다.', 1),
('JSP에 대한 질문', 'JSP는 Java 기반의 서버 사이드 스크립트 언어입니다.', 3),
('Spring에 대한 질문', 'Spring은 Java 웹 개발을 위한 프레임워크입니다.', 5),
('HTML/CSS 스타일링', 'HTML과 CSS를 이용하여 웹 페이지를 꾸미는 방법을 알려주세요.', 2),
('JavaScript 함수', 'JavaScript 함수의 정의와 사용 방법을 알려주세요.', 4),
('DB 모델링', 'DB 모델링의 개념과 중요성을 알려주세요.', 1),
('JSP 태그', 'JSP에서 사용하는 태그들의 종류와 사용 방법을 알려주세요.', 3),
('Spring MVC 패턴', 'Spring MVC 패턴의 개념과 구성 요소를 알려주세요.', 5),
('HTML/CSS Flexbox', 'Flexbox를 이용하여 레이아웃을 구성하는 방법을 알려주세요.', 2),
('JavaScript AJAX', 'JavaScript AJAX를 이용하여 서버와 데이터를 주고받는 방법을 알려주세요.', 4),
('DB SQL', 'SQL을 이용하여 데이터베이스에서 데이터를 조회하는 방법을 알려주세요.', 1),
('JSP EL 표현식', 'JSP EL 표현식의 개념과 사용 방법을 알려주세요.', 3),
('Spring Boot', 'Spring Boot를 이용하여 웹 어플리케이션을 개발하는 방법을 알려주세요.', 5),
('HTML/CSS Grid', 'Grid를 이용하여 레이아웃을 구성하는 방법을 알려주세요.', 2),
('JavaScript 객체', 'JavaScript 객체의 개념과 생성 방법을 알려주세요.', 4),
('DB 인덱스', 'DB 인덱스의 개념과 사용 방법을 알려주세요.', 1),
('JSP JSTL', 'JSTL을 이용하여 JSP에서 데이터를 처리하는 방법을 알려주세요.', 3),
('Spring Security', 'Spring Security를 이용하여 웹 어플리케이션의 보안을 강화하는 방법을 알려주세요.', 5),
('HTML/CSS 이미지 처리', 'HTML과 CSS를 이용하여 이미지를 처리하는 방법을 알려주세요.', 2),
('JavaScript 이벤트 처리', 'JavaScript를 이용하여 이벤트를 처리하는 방법을 알려주세요.', 4),
('DB 트랜잭션', 'DB 트랜잭션의 개념과 사용 방법을 알려주세요.', 1),
('JSP 서블릿', 'JSP와 서블릿의 차이와 서블릿의 개념을 알려주세요.', 3),
('Spring AOP', 'Spring AOP의 개념과 사용 방법을 알려주세요.', 5),
('HTML/CSS 반응형 디자인', 'HTML과 CSS를 이용하여 반응형 디자인을 구현하는 방법을 알려주세요.', 2),
('JavaScript 클로저', 'JavaScript 클로저의 개념과 사용 방법을 알려주세요.', 4),
('DB 조인', 'DB 조인의 종류와 사용 방법을 알려주세요.', 1),
('JSP 포워딩과 리다이렉트', 'JSP에서 포워딩과 리다이렉트의 차이와 사용 방법을 알려주세요.', 3),
('Spring Data JPA', 'Spring Data JPA를 이용하여 데이터베이스를 조작하는 방법을 알려주세요.', 5),
('HTML/CSS 메뉴 구현', 'HTML과 CSS를 이용하여 메뉴를 구현하는 방법을 알려주세요.', 2),
('JavaScript Promise', 'JavaScript Promise의 개념과 사용 방법을 알려주세요.', 4),
('DB 테이블 설계', 'DB 테이블 설계의 개념과 방법을 알려주세요.', 1),
('JSP 커스텀 태그', 'JSP에서 커스텀 태그를 만들어 사용하는 방법을 알려주세요.', 3),
('Spring Rest API', 'Spring을 이용하여 Rest API를 개발하는 방법을 알려주세요.', 5),
('HTML/CSS 미디어 쿼리', 'HTML과 CSS를 이용하여 미디어 쿼리를 구현하는 방법을 알려주세요.', 2),
('JavaScript 모듈', 'JavaScript 모듈의 개념과 사용 방법을 알려주세요.', 4),
('DB 백업과 복구', 'DB 백업과 복구 방법을 알려주세요.', 1),
('JSP MVC 패턴', 'JSP에서 MVC 패턴을 구현하는 방법을 알려주세요.', 3);


('CodeGrow 공지사항', '공지사항입니다공지사항입니다', 6);
('CodeGrow 공지사항2', '공지사항입니다공지사항22입니다', 6);

selelct * from board;

# 댓글
CREATE TABLE comment (
  id INT(11) NOT NULL AUTO_INCREMENT,
  content TEXT NOT NULL,
  post_id INT(11) NOT NULL,
  author_id INT(11) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  FOREIGN KEY (post_id) REFERENCES board(id),
  FOREIGN KEY (author_id) REFERENCES member(id)
);
INSERT INTO comment (content, post_id, author_id)
VALUES 
('첫번째 댓글 내용', 1, 2),
('두번째 댓글 내용', 1, 3),
('세번째 댓글 내용', 2, 4),
('네번째 댓글 내용', 3, 5),
('다섯번째 댓글 내용', 4, 1);


CREATE TABLE video_category (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);

INSERT INTO video_category (name)
VALUES ('HTML/CSS'), ('JAVASCRIPT'), ('DATABASE'), ('JSP'), ('SPRING');


CREATE TABLE video (
  id INT(11) NOT NULL AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  url VARCHAR(255) NOT NULL,
  uploader_id INT(11) NOT NULL,
  uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  category_id INT(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (uploader_id) REFERENCES member(id),
  FOREIGN KEY (category_id) REFERENCES video_category(id)
);

INSERT INTO video (title, description, url, uploader_id, category_id)
VALUES
('CSS란 무엇일까?', 'CSS의 의미, 정의를 알아보고 선택자, 스타일링, 헷갈리는 컨셉, Flex box에 대해서 알아봅시다!', 'gGebK7lWnCk', 3, 1),
('CSS 레이아웃 정리', 'display, position의 기본값과 속성값들을 알아봅시다! ', 'jWh3IbgMUPI', 3, 1),
('CSS 한번에 끝내기!!', '웹 페이지 스타일 정의를 다양한 예제와 함께 따라하면서 배우기', 'J3ef9c-sZ14', 3, 1),
('CSS 30분 요약!', '간단하고 빠르게 CSS를 학습하세요!', '_PeEALPPauk', 3, 1),
('초보자를 위한 CSS 기초', '완전 초심자를 위해서 천천히 재밌게 CSS를 알려드립니다!', 'sZXr_4fmz5o', 3, 1),
('HTML 한번에 끝내기!!', 'HTML의 개념과 구조부터 각종 태그를 사용하며 배워보세요!', 'VozMYcCYvtg', 3, 1),


('자바스크립트 기초 30분 완성!', 'JAVA와 Javascript의 차이와 자바스크립트의 역할, 변수, 함수, 조건문, 반복문을 배워보세요!', 'E-PzX2mKGUQ', 3, 2),
('100분만에 끝내는 자바스크립트 기초', '자바스크립트의 기초를 자세하고 완벽하게 알려드립니다.', 'KF6t61yuPCY', 3, 2),
('140분만에 끝내는 자바스크립트 중급', '자바스크립트의 어느정도 지식을 알고 있으신분들이 들으면 좋은 강의입니다.', '4_WLS9Lj6n4', 3, 2),
('제대로 파는 자바스크립트 끝.장.내.기!', '자바스크립트의 문법, 객체지향 등 클린하고 깨끗하게 코딩하는 방법을 알려드립니다.', 'RHoPpjKRT38', 3, 2),
('30분에 끝내는 자바스크립트', '30분에 빠르게 자바스크립트에 대해서 배우는게 가능합니다!', 'NQZZyVM8ksw', 3, 2),

('왕초보용! 데이터베이스 강좌', '비전공자도 알 수 있게 편하게 배우는게 가능한 강좌입니다.', 'dgpBXNa9vJc', 3, 3),
('데이터 베이스 SQL문', 'SQL이 완전 처음이신 분들께 처음부터 쉽게 설명 드립니다.', 'muOKnEIUA8Y', 3, 3),
('한시간에 끝내는 SQL입문', 'SQL문에서 여러가지 데이터를 검색하는 방법을 알려드립니다.', '1lmfJ8LHquw', 3, 3),
('SQL 초보자가 꼭 알아야 하는 10가지 문법!', 'SQL초보자가 꼭 알아야하는 기초 문법을 자세하게 설명드립니다.', 'ZsYnTSSuSiw', 3, 3),
('회사에서 많이 쓰는 기초 SQL문', '회사에서 데이터분석가로 근무하면서 자주 사용하는 SQL문을 알려드립니다.', 'XN4iXklAnQw', 3, 3),

('[JSP] 서블릿 개념 핥기!', 'JSP파일 요청 처리, Servelet 요청 처리에 대해서 다룬 영상입니다.', 'g5KmJAIIEeI', 3, 4),
('Cookie를 이용해 상태값 유지하기', '쿠키가 왜 필요한가? 어떻게 사용하는가?  보기 쉽게 정리한 영상입니다.', 'ONtMvVocGy8', 3, 4),
('Session(세션) 이해하기', '세션이란 무엇인가? 세션과 쿠키는 뭐가 다른건가? 세션 쿠키는 뭘까에 대해서 다룬 영상입니다.', 'VrWK1VPW5Qg', 3, 4),
('JSP의 동작 원리', 'JSP는 도대체 어떤 동작 원리를 갖고 서비스가 이뤄지는지 JSP와 서블릿의 관계에 대해서 알아봅시다. ', '54j-78_LcXE', 3, 4),
('세션 잘라 먹기 실습!', '강의 시청과 직접 실습을 통해서 따라해보세요!', 'gN6ifi6FJTk', 3, 4),

('한시간에 끝내는 스프링 부트 기본기', '스프링과 스프링 부트의 차이와 기본 지식을 탄탄하게 알려드립니다.', 'AalcVuKwBUM', 3, 5),
('스프링 부트 기초 강의', '인터페이스부터 기초, GoF의 디자인 패턴 예외 처리등 한편에 모든것을 담았습니다.', '7t6tQ4KV37g', 3, 5),
('스프링과 스프링 부트의 차이', '스프링과 스프링 부트의 차이를 알려드리고, 프레임워크의 특징과 제공하는 기능에 대해서 알아보겠습니다.', 'YSsl5-q2BR4', 3, 5),
('SPRING Boot 개요', '스프링 부트의 기본 개념에 대해서 완벽하게 파헤치는 강의!', 'MFT2s6ijTws', 3, 5),
('프로젝트 생성부터 구조 살펴보기!', '스프링 부트의 프로젝트를 만들어보고 기본 구조가 어떻게 되어있는지 살펴봅시다.', 'rHJgMRimJ4Y', 3, 5);