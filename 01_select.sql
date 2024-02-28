-- select 절은 MySQL 의 가장 기본적인 명령어로 특정 테이블에서 우너하는 데이터를 조회할 수 있다.

select				-- 조회 해줘 
	menu_name		-- 어떤 컬럼을?
from tbl_menu;		-- 어디서?

select 
	menu_code,
    menu_name,
    menu_price
from tbl_menu;

select
	menu_code,
    category_code,
    menu_price
from tbl_menu;

select
	menu_code,
    menu_name,
    menu_price
	category_code,
    orderable_status
from tbl_menu;

-- *
select
	*
from tbl_menu;

select now();
select concat('신', ' 이봐 ' , '짱구');

select concat('신', '짱', '구') as 그대이름;
select concat('신', '짱', '구') as '그대 이름';

	