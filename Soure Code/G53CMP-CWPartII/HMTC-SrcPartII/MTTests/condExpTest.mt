let
	var d2 : Boolean
in begin
    d2 := true ? true : false
    // Should be parsed as e1 ? (e2 ? e3 : e4) : e5
end