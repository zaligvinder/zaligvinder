(declare-const X String)
; ^[[V|E|J|G]\d\d\d\d\d\d\d\d]{0,9}$
(assert (str.in.re X (re.++ (re.union (str.to.re "[") (str.to.re "V") (str.to.re "|") (str.to.re "E") (str.to.re "J") (str.to.re "G")) (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") ((_ re.loop 0 9) (str.to.re "]")) (str.to.re "\x0a"))))
(check-sat)
