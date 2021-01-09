(declare-const X String)
; ^[-+]?\d+(\.\d)?\d*$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9"))) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; /^Host:\s*?[a-f0-9]{63,64}\./Him
(assert (not (str.in.re X (re.++ (str.to.re "/Host:") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 63 64) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "./Him\x0a")))))
; http\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (not (str.in.re X (str.to.re "http://tv.seekmo.com/showme.aspx?keyword=\x0a"))))
(check-sat)
