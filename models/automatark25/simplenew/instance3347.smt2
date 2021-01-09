(declare-const X String)
; .*[\$Ss]pecia[l1]\W[Oo0]ffer.*
(assert (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "$") (str.to.re "S") (str.to.re "s")) (str.to.re "pecia") (re.union (str.to.re "l") (str.to.re "1")) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re "O") (str.to.re "o") (str.to.re "0")) (str.to.re "ffer") (re.* re.allchar) (str.to.re "\x0a"))))
(check-sat)
