(declare-const X String)
; ^ *([0-1]?[0-9]|[2][0-3]):[0-5][0-9] *(a|p|A|P)(m|M) *$
(assert (not (str.in.re X (re.++ (re.* (str.to.re " ")) (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9") (re.* (str.to.re " ")) (re.union (str.to.re "a") (str.to.re "p") (str.to.re "A") (str.to.re "P")) (re.union (str.to.re "m") (str.to.re "M")) (re.* (str.to.re " ")) (str.to.re "\x0a")))))
(check-sat)
