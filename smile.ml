open Printf

let rec smile x y =
	if x == 0 then ()
	else if x > y then (
		printf "a";
		smile x (y+1)
	) else (
		printf "\n";
		smile (x-1) 0
	)

let main () =
	let smiled = Smodule.smile 3 0 "" in
	let _  = printf "smiled: \n%s\n" smiled in
	smile 3 0

let _ = main ()
