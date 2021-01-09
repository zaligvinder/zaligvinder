(declare-const X String)
; ^(20|21|22|23|[01]\d|\d)(([:.][0-5]\d){1,2})$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "20") (str.to.re "21") (str.to.re "22") (str.to.re "23") (re.++ (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9")) (re.range "0" "9")) ((_ re.loop 1 2) (re.++ (re.union (str.to.re ":") (str.to.re ".")) (re.range "0" "5") (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
