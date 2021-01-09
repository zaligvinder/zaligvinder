(declare-const X String)
; /\/3\/[A-Z]{2}\/[a-f0-9]{32}\.djvu/
(assert (str.in.re X (re.++ (str.to.re "//3/") ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".djvu/\x0a"))))
(check-sat)
