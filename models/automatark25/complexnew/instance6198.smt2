(declare-const X String)
; User-Agent\x3AUser-Agent\x3a
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:\x0a")))
; /^[-+]?[1-9](\d*|((\d{1,2})?,(\d{3},)*(\d{3})))?([eE][-+]\d+)?$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.range "1" "9") (re.opt (re.union (re.* (re.range "0" "9")) (re.++ (re.opt ((_ re.loop 1 2) (re.range "0" "9"))) (str.to.re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9"))))) (re.opt (re.++ (re.union (str.to.re "e") (str.to.re "E")) (re.union (str.to.re "-") (str.to.re "+")) (re.+ (re.range "0" "9")))) (str.to.re "/\x0a")))))
(check-sat)
