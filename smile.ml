open Printf

let rec accu_smile x y input =
	if x == 0 then input
	else if x > y then (
		accu_smile x (y+1) (input ^ "a")
	) else (
		accu_smile (x-1) 0 (input ^ "\n")
	)

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
	let smiled = accu_smile 3 0 "" in
	let _  = printf "smiled: \n%s\n" smiled in
	smile 3 0

let _ = main ()
