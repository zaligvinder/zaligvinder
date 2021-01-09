(declare-const X String)
; [A-Z|a-z]{4}[0][\d]{6}$
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.union (re.range "A" "Z") (str.to.re "|") (re.range "a" "z"))) (str.to.re "0") ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
