fun countup (from : int, to : int) =
    if from=to
    then to::[]
    else from :: countup(from+1, to) 		 

fun countdown (from : int, to : int) =
    if from = to
    then to::[]
    else from :: countdown(from-1, to)

fun bad_max (x : int list) =
    if null x
    then 0
    else if null (tl x)
    then hd x
    else if hd x > bad_max(tl x)
    then hd x
    else bad_max(tl x)


fun good_max (x : int list) =
    if null x
    then 0 (*Still not perfect but fixed in the next file.*)
    else if null (tl x)
    then hd x
    else
	let val tail_ans = good_max(tl x)
        in
	    if hd x > tail_ans
	    then hd x
	    else tail_ans
	end
