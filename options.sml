fun old_max (x : int list) =
    if null x
    then 0
    else if null (tl x)
    then hd x
    else
	let val = tail_ans = tl x
	in
	    if hd x > tail_ans
	    then hd x
	    else tail_ans
	end

fun max_fixed (x : int list) =
    if null x
    then NONE
    else
	let val tail_ans = tl x
	in
	    if isSome tail_ans andalso valOf tail_ans > hd x
	    then tail_ans
	    else
		SOME (hd x)
	    end
fun max_better (x : int list) = 
    if null x
    then NONE
    else let
    	    fun max_nonempty (x : int list) = 
	        if null (tl x)
		then hd x
		else let val tail_ans
		     in 
		     if hd x > tail_ans
		     then hd x
		     else tail_ans
		end
    in
        SOME max_nonempty (x)
    end
