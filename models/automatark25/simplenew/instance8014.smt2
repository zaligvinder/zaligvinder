(declare-const X String)
; /^\/[a-z]{5}\.php\?id=0\d{5}111D30[a-zA-Z0-9]{6}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 5 5) (re.range "a" "z")) (str.to.re ".php?id=0") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "111D30") ((_ re.loop 6 6) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/Ui\x0a")))))
(check-sat)
