(declare-const X String)
; ((\d{1,5})*\.*(\d{0,3})"[W|D|H|DIA][X|\s]).*
(assert (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a") (re.* ((_ re.loop 1 5) (re.range "0" "9"))) (re.* (str.to.re ".")) ((_ re.loop 0 3) (re.range "0" "9")) (str.to.re "\x22") (re.union (str.to.re "W") (str.to.re "|") (str.to.re "D") (str.to.re "H") (str.to.re "I") (str.to.re "A")) (re.union (str.to.re "X") (str.to.re "|") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))
(check-sat)
