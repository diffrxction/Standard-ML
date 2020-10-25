(*Lists in SML*)
val w = [];

val x = [3,4,5];

val y = [4,3];

val z = [1,2,3+4,7];

val boolean = [true, false, true];

(*Invalid because we can't add list to a list of integers //val y1 = y::x;*)

val a = [9]::[[],[4],[4,5]];

val none = [];

val boo = null none;

val headz = hd z;

val tailz = tl z;

val list1 = [(1,2), (3,4)];

val list1 = (0,0)::list1;
	     
(*

OUTPUTS:

val w = [] : 'a list

val x = [3,4,5] : int list

val y = [4,3] : int list

val z = [1,2,7,7] : int list

val boolean = [true,false,true] : bool list

val a = [[9],[],[4],[4,5]] : int list list

val none = [] : 'a list

val boo = true : bool

val headz = 1 : int

val tailz = [2,7,7] : int list

val list1 = [(1,2),(3,4)] : (int * int) list

val list1 = [(0,0),(1,2),(3,4)] : (int * int) list

val it = () : unit

*)
