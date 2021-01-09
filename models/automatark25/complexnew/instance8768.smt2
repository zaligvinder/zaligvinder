(declare-const X String)
; ^(((\.\.){1}/)*|(/){1})?(([a-zA-Z0-9]*)/)*([a-zA-Z0-9]*)+([.jpg]|[.gif])+$
(assert (str.in.re X (re.++ (re.opt (re.union (re.* (re.++ ((_ re.loop 1 1) (str.to.re "..")) (str.to.re "/"))) ((_ re.loop 1 1) (str.to.re "/")))) (re.* (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/"))) (re.+ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.+ (re.union (str.to.re ".") (str.to.re "j") (str.to.re "p") (str.to.re "g") (str.to.re "i") (str.to.re "f"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2efon/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".fon/i\x0a"))))
; TSA\x2FS\x3aUsers\x5chttp\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (str.in.re X (str.to.re "TSA/S:Users\x5chttp://tv.seekmo.com/showme.aspx?keyword=\x0a")))
(check-sat)
