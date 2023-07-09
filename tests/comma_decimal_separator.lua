local ini <const> = dofile("../iniparser.lua")

-- Test reading decimal values from files that use comma as decimal separator
do
	local res = ini.parse("comma_decimal_separator.ini")
	assert(res.section.myInt == 42)
	assert(res.section.myFloat == 1.23)
end
