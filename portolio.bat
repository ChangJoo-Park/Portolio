@echo off
cls
@echo 제 6회 공개 SW 개발자대회 
@echo Portolio(포톨리오) 설치 프로그램입니다.
@echo 서울과학기술대학교
@echo Portolio(포톨리오)팀
@echo 박창주, 문혜림
pause

cls
@echo Ruby on Rails에 필요한 Gem을 설치합니다.
call bundle install
cls

@echo 데이터베이스를 생성합니다.
pause
call rake db:migrate
cls
@echo 서버를 실행합니다.
@echo 서버는 포트 80번을 사용합니다
@echo 브라우저에서 localhost를 입력하면 됩니다.
pause
call thin start -p 80