fun sum_list (x : int list) =
    if null x
    then 0
    else hd x + sum_list(tl x)

			
fun list_product (x : int list) =
    if null x
    then 1
    else hd x * list_product(tl x)

fun countdown (x : int) = (*[7,6,5,4,3,2,1] *)
    if x = 0
    then []
    else x :: countdown(x - 1)

fun append (x : int list, y : int list) =
    if null x
    then y
    else (hd x) :: append((tl x), y)

fun factorial (n : int) = list_product(countdown(n))
			 
fun sum_pair_list (x : (int * int) list) =
    if null x
    then 0
    else #1 (hd x) + #2 (hd x) + sum_pair_list(tl x)	     

fun firsts (x : (int * int) list) =
    if null x
    then []
    else (#1 (hd x)) :: firsts(tl xs)	  

fun seconds (x : (int * int) list) =
    if null x
    then []
    else (#2 (hd x)) :: seconds(tl xs)
	    
