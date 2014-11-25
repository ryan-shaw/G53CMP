let
	var x : Integer
in begin
	getint(x);
	if x == 0 then 
		x := 0
	elsif x == 1 then
		x := 2
	else 
		x := 3;

	putint(x)

end