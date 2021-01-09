(declare-const X String)
; ^[a-z][a-z0-9\.,\-_]{5,31}$
(assert (not (str.in.re X (re.++ (re.range "a" "z") ((_ re.loop 5 31) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re ".") (str.to.re ",") (str.to.re "-") (str.to.re "_"))) (str.to.re "\x0a")))))
(check-sat)
