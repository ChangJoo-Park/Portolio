@echo off
cls
@echo �� 6ȸ ���� SW �����ڴ�ȸ 
@echo Portolio(���縮��) ��ġ ���α׷��Դϴ�.
@echo ������б�����б�
@echo Portolio(���縮��)��
@echo ��â��, ������
pause

cls
@echo Ruby on Rails�� �ʿ��� Gem�� ��ġ�մϴ�.
call bundle install
cls

@echo �����ͺ��̽��� �����մϴ�.
pause
call rake db:migrate
cls
@echo ������ �����մϴ�.
@echo ������ ��Ʈ 80���� ����մϴ�
@echo ���������� localhost�� �Է��ϸ� �˴ϴ�.
pause
call thin start -p 80