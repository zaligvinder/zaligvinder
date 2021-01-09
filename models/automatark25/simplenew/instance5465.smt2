(declare-const X String)
; ^(\d{1,2})(\s?(H|h)?)(:([0-5]\d))?$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (str.to.re "\x0a") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.union (str.to.re "H") (str.to.re "h")))))))
(check-sat)
