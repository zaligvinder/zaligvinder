(declare-const X String)
; ^[a-zA-Z0-9\x20'\.]{8,64}[^\s]$
(assert (str.in.re X (re.++ ((_ re.loop 8 64) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re " ") (str.to.re "'") (str.to.re "."))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0a"))))
(check-sat)
