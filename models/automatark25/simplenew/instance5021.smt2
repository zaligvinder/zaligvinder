(declare-const X String)
; ^\(\d{1,2}(\s\d{1,2}){1,2}\)\s(\d{1,2}(\s\d{1,2}){1,2})((-(\d{1,4})){0,1})$
(assert (not (str.in.re X (re.++ (str.to.re "(") ((_ re.loop 1 2) (re.range "0" "9")) ((_ re.loop 1 2) (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re ")") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.opt (re.++ (str.to.re "-") ((_ re.loop 1 4) (re.range "0" "9")))) (str.to.re "\x0a") ((_ re.loop 1 2) (re.range "0" "9")) ((_ re.loop 1 2) (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 1 2) (re.range "0" "9"))))))))
(check-sat)
