(declare-const X String)
; /\.php\?mac\x3d([a-f0-9]{2}\x3a){5}[a-f0-9]{2}$/U
(assert (str.in.re X (re.++ (str.to.re "/.php?mac=") ((_ re.loop 5 5) (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ":"))) ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
(check-sat)
