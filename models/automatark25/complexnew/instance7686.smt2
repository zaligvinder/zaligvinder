(declare-const X String)
; /\/[a-z]{1,4}\x2ehtml\x3f0\x2e[0-9]{15,}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 1 4) (re.range "a" "z")) (str.to.re ".html?0./U\x0a") ((_ re.loop 15 15) (re.range "0" "9")) (re.* (re.range "0" "9"))))))
; ^[A-Za-z]\d[A-Za-z][ -]?\d[A-Za-z]\d$
(assert (str.in.re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9") (str.to.re "\x0a"))))
(check-sat)
