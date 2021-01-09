(declare-const X String)
; /filename\=[a-z0-9]{24}\.exe/H
(assert (str.in.re X (re.++ (str.to.re "/filename=") ((_ re.loop 24 24) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".exe/H\x0a"))))
(check-sat)
