(declare-const X String)
; /^\/[a-f0-9]{32}\/[a-f0-9]{32}\.swf$/Ui
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".swf/Ui\x0a"))))
(check-sat)
