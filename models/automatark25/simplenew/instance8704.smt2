(declare-const X String)
; /\/se\/[a-f0-9]{100,200}\/[a-f0-9]{6,9}\/[A-Z0-9_]{4,200}\.com/Ui
(assert (str.in.re X (re.++ (str.to.re "//se/") ((_ re.loop 100 200) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 6 9) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 4 200) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))) (str.to.re ".com/Ui\x0a"))))
(check-sat)
