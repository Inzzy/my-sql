-- order by
-- order by 절은 select 문과 함께 사용하며
-- 결과 집합을 특정 열이나 열들의 값에 따라 정렬하는 데 사용

select
	menu_code,
    menu_name,
    menu_price
from tbl_menu
order by
	menu_price desc;

select
	menu_code,
    menu_name,
    menu_price
from tbl_menu
order by
	menu_name desc;
 select
	menu_code,
    menu_name,
    menu_price
from tbl_menu
order by
	menu_price desc,
    menu_name asc;

select
	menu_code,
    menu_price,
    menu_code * menu_price
from
	tbl_menu
order by
	menu_code * menu_price desc;
    
select
	menu_code,
    menu_price,
    menu_code * menu_price as 연산결과
from tbl_menu
order by
	menu_code * menu_price desc;

-- select
--	menu_code
--	, 
--    menu_price;
select field('c', 'a', 'b', 'c');

select
	field(orderable_status, 'N', 'Y')
from tbl_menu;

select
	menu_name,
    orderable_status
from tbl_menu
order by field(orderable_status, 'N', 'Y');

select
	*
from tbl_category;

select
	category_code,
    category_name,
    ref_category_code
from tbl_category
order by
	ref_category_code asc;

select
	category_code,
    category_name,
    ref_category_code
from tbl_category
order by
	ref_category_code is null asc;



