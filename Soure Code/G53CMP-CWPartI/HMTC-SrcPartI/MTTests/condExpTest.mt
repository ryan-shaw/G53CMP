begin
    d2 := true ? true : false;
    e := e1 ? e2 : e3 ? e4 : e5
    // Should be parsed as e1 ? (e2 ? e3 : e4) : e5
end
