*Load training data
input id category
1	3
2	1
3	2
4	1
end

*List all data
list

* data
fillin id category

*Generate chosen variable
gen chosen = (1 - _fillin)

*List all data
list, sep(3)

