*Clear
clear

*input custom data
input var1 group1
1	1
2	1
3	1
4	1
5	1
6	2
7	2
8	2
9	2
10	2
end

*Subscripting examples
gen newvar = var1[_n]
replace newvar = var1[5]
replace newvar = var1[_N]
replace newvar = var1[_N - _n]
replace newvar = var1[_N - _n+1]

*Subscripting examples over groups
bys group: replace newvar = var1[4]
bys group: replace newvar = var1[_N]
bys group: replace newvar = var1[_n-1]

