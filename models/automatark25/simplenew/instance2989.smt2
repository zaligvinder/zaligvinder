(declare-const X String)
; /filename=[a-z0-9]+\x0d\x0a/H
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "\x0d\x0a/H\x0a")))))
(check-sat)
