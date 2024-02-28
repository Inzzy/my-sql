-- where
-- where 절은 특정 조건에 맞는 레코드만 선택하는데
-- 사용되며, 다양한 방법으로 조건을 설정할 수 있다.

select
	menu_name,
	menu_price,
    orderable_status
from
	tbl_menu
where
	orderable_status = 'Y';
select
	menu_name,
	menu_price,
    orderable_status
from
	tbl_menu
where
	menu_price = 13000;

select
	menu_name,
	menu_price,
    orderable_status
from
	tbl_menu
where
				-- (!=, <>) 부정
	orderable_status != 'Y';

select
	menu_name,
	menu_price,
    orderable_status
from
	tbl_menu
where
	menu_price > 20000;

select
	menu_name,
	menu_price,
    orderable_status
from
	tbl_menu
where
	menu_price <= 20000;

select
	menu_name,
	menu_price,
    menu_code
from
	tbl_menu
where
	menu_price >= 10000 && menu_price <= 20000;

-- and / or 연산자
-- where 절과 함께 사용 하며
-- 자바랑 똑같다.
-- (or) : 둘 다 null이 아니면서 하나라도 0이 아닌 값이 있을 경우 1을 반환한다.

-- or 테스트
select 1 or 1, 1 or 0, 0 or 1;
select 0 or 0;

select
	menu_name,
	menu_price,
    category_code,
    orderable_status
from
	tbl_menu
where
	orderable_status = 'Y'
    or
    category_code = 10
order by
	category_code;

select
	*
from
	tbl_menu
where
	menu_price > 5000 or category_code = 10;

-- (and) 연산자
-- and 연산자와 함께 where절 사용

select 1 and 1;
select 1 and 0, 0 and 1, 0 and 0;

select
	*
from
	tbl_menu
where
	orderable_status = 'Y'
    and
    category_code = 10;
select
	*
from
	tbl_menu
where
	category_code = 4
    or
    menu_price = 9000
    and
    menu_code > 10;

select
	menu_name,
    menu_price,
    category_code
from
	tbl_menu
where
	menu_price between 10000 and 20000;

select
	menu_name,
    menu_price,
    category_code
from
	tbl_menu
where
	menu_price not between 10000 and 20000;

-- like 연산자

select
	menu_name,
    menu_price
from
	tbl_menu
where
	menu_name like '%마늘%';

select
	menu_name,
    menu_price
from
	tbl_menu
where
	menu_price > 5000 
    and
    category_code = 10
    and
    menu_name like '%갈치%';

-- in 연산자 활용

select
	menu_name,
    category_code
from
	tbl_menu
where
	category_code = 4
    or
    category_code = 5
    or
    category_code = 6;
select
	menu_name,
    category_code
from
	tbl_menu
where
	category_code in (4,5,6);

-- is null 연산자 활용
select
	category_code,
    category_name,
    ref_category_code
from
	tbl_category
where
	ref_category_code is not null;











