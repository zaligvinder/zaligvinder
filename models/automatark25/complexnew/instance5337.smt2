(declare-const X String)
; ^[0-9]{10}$|^\(0[1-9]{1}\)[0-9]{8}$|^[0-9]{8}$|^[0-9]{4}[ ][0-9]{3}[ ][0-9]{3}$|^\(0[1-9]{1}\)[ ][0-9]{4}[ ][0-9]{4}$|^[0-9]{4}[ ][0-9]{4}$
(assert (str.in.re X (re.union ((_ re.loop 10 10) (re.range "0" "9")) (re.++ (str.to.re "(0") ((_ re.loop 1 1) (re.range "1" "9")) (str.to.re ")") ((_ re.loop 8 8) (re.range "0" "9"))) ((_ re.loop 8 8) (re.range "0" "9")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to.re "(0") ((_ re.loop 1 1) (re.range "1" "9")) (str.to.re ") ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; /^\x2f[0-9a-f]+$/iU
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "/iU\x0a")))))
; \-?(90|[0-8]?[0-9]\.[0-9]{0,6})\,\-?(180|(1[0-7][0-9]|[0-9]{0,2})\.[0-9]{0,6})
(assert (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (str.to.re "90") (re.++ (re.opt (re.range "0" "8")) (re.range "0" "9") (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9")))) (str.to.re ",") (re.opt (str.to.re "-")) (re.union (str.to.re "180") (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "7") (re.range "0" "9")) ((_ re.loop 0 2) (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
