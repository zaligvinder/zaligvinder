(declare-const X String)
; ^[0-9]{3}[-|/]{1}[0-9]{6}[-|/]{1}[0-9]{6}$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re "|") (str.to.re "/"))) ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re "|") (str.to.re "/"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; \b[A-z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "A" "z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "%") (str.to.re "-"))) (str.to.re "@") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "-"))) (str.to.re ".") ((_ re.loop 2 4) (re.range "A" "Z")) (str.to.re "\x0a"))))
(check-sat)
