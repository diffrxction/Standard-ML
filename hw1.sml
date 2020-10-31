(*Programming Languages Week 1 Assignment*)
(*Written by Aryan on the 29th of October 2020*)

(*Question 1*)

fun equal_dates (d1 : (int * int * int), d2 : (int * int * int)) =
    #1 d1 = #1 d2 andalso #2 d1 = #2 d2 andalso  #3 d1 = #3 d2

fun is_older (d1 : (int * int * int), d2 : (int * int * int)) =
    if equal_dates (d1, d2)
    then false
    else #1 d1 <= #1 d2 andalso #2 d1 <= #2 d2 andalso #3 d1 <= #3 d2

(*Question 2*)

fun number_in_month (n : (int * int * int) list, month : int) =
    if null n
    then 0
    else if #2 (hd n) = month
	 then 1 + number_in_month (tl n, month)
	 else number_in_month (tl n, month)
								   
(*If the month of the head date is equal to month that is to be compared with, then we add 1 and recall the function number_in_month. If not, then we recall number_in_month recursively without adding 1 to it. Finally for a null situation, the process returns 0.*)
								   
fun number_in_months (dates : (int * int * int) list, months : int list) =
    if null months
    then 0
    else number_in_month (dates, hd months) + number_in_months (dates, tl months)

fun dates_in_month (dates : (int * int * int) list, month : int ) =
    if null dates
    then []
    else if #2 (hd dates) = month
        then hd dates :: dates_in_month (tl dates, month)
        else dates_in_month (tl dates, month)
	
	
fun dates_in_months (dates : (int * int * int) list, months : int list) =
    if null months
    then []
    else dates_in_month (dates, hd months) @ dates_in_months (dates, tl months)


fun get_nth (strings : string list, n : int) =
    if n = 1
    then hd strings
    else get_nth (tl strings, n - 1)
