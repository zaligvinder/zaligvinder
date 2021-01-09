(declare-const X String)
; \+44\s\(0\)\s\d{2}\s\d{4}\s\d{4}
(assert (not (str.in.re X (re.++ (str.to.re "+44") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "(0)") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 4 4) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; (vi(v))?d
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "viv")) (str.to.re "d\x0a")))))
; ^([GB])*(([1-9]\d{8})|([1-9]\d{11}))$
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "G") (str.to.re "B"))) (re.union (re.++ (re.range "1" "9") ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 11 11) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
