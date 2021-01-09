(declare-const X String)
; ([0-9]{6}|[0-9]{3}\s[0-9]{3})
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 6 6) (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
