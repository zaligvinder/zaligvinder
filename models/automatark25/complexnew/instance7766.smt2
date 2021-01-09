(declare-const X String)
; ^\b\d{2,3}-*\d{7}\b$
(assert (str.in.re X (re.++ ((_ re.loop 2 3) (re.range "0" "9")) (re.* (str.to.re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\/elections\.php\?([a-z0-9]+\x3d\d{1,3}\&){9}[a-z0-9]+\x3d\d{1,3}$/U
(assert (str.in.re X (re.++ (str.to.re "//elections.php?") ((_ re.loop 9 9) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "&"))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "/U\x0a"))))
(check-sat)
