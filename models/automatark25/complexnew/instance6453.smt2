(declare-const X String)
; ^\d* \d*\/{1}\d*$|^\d*$
(assert (not (str.in.re X (re.union (re.++ (re.* (re.range "0" "9")) (str.to.re " ") (re.* (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re "/")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (str.to.re "\x0a"))))))
; ^((\+)?(\d{2}[-]))?(\d{10}){1}?$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-"))) ((_ re.loop 1 1) ((_ re.loop 10 10) (re.range "0" "9"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2esln/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".sln/i\x0a")))))
(check-sat)
