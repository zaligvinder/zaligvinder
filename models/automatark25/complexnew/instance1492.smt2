(declare-const X String)
; ^-?[0-9]{0,2}(\.[0-9]{1,2})?$|^-?(100)(\.[0]{1,2})?$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9"))))) (re.++ (re.opt (str.to.re "-")) (str.to.re "100") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (str.to.re "0")))) (str.to.re "\x0a")))))
; \d{4}\s\d{4}\s\d{4}\s\d{4}$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 4 4) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 4 4) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
