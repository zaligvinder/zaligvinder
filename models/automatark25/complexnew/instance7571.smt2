(declare-const X String)
; (<b>)([^<>]+)(</b>)
(assert (not (str.in.re X (re.++ (str.to.re "<b>") (re.+ (re.union (str.to.re "<") (str.to.re ">"))) (str.to.re "</b>\x0a")))))
; ^[A-Za-z]{2}[0-9]{6}[A-Za-z]{1}$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a"))))
(check-sat)
