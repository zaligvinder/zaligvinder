(declare-const X String)
; /hwinfo=\x7b[a-f0-9]{8}\x2d[a-f0-9]{4}\x2d[a-f0-9]{4}\x2d[a-f0-9]{4}\x2d[a-f0-9]{12}\x7d/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/hwinfo={") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 12 12) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "}/smiU\x0a")))))
; ^[^\\\/\?\*\"\'\>\<\:\|]*$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re "\x5c") (str.to.re "/") (str.to.re "?") (str.to.re "*") (str.to.re "\x22") (str.to.re "'") (str.to.re ">") (str.to.re "<") (str.to.re ":") (str.to.re "|"))) (str.to.re "\x0a")))))
; ^([987]{1})(\d{1})(\d{8})
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "9") (str.to.re "8") (str.to.re "7"))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
