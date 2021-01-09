(declare-const X String)
; ^\$((\d{1})\,\d{1,3}(\,\d{3}))|(\d{1,3}(\,\d{3}))|(\d{1,3})?$
(assert (not (str.in.re X (re.union (re.++ (str.to.re "$") ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.opt ((_ re.loop 1 3) (re.range "0" "9"))) (str.to.re "\x0a"))))))
(check-sat)
