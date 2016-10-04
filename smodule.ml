let rec smile x y input =
	if x == 0 then input
	else if x > y then (
		smile x (y+1) (input ^ "a")
	) else (
		smile (x-1) 0 (input ^ "\n")
	)
