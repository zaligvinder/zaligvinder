(declare-const X String)
; ^(F-)?((2[A|B])|[0-9]{2})[0-9]{3}$
(assert (str.in.re X (re.++ (re.opt (str.to.re "F-")) (re.union (re.++ (str.to.re "2") (re.union (str.to.re "A") (str.to.re "|") (str.to.re "B"))) ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; /^\/\x3f[1-9][A-Za-z0-9~_-]{240}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//?") (re.range "1" "9") ((_ re.loop 240 240) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "~") (str.to.re "_") (str.to.re "-"))) (str.to.re "/Ui\x0a")))))
(check-sat)
