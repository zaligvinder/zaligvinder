(declare-const X String)
; /filename=[^\n]*\x2emka/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mka/i\x0a"))))
; /^\/\?[a-z0-9]{2}\=[a-z1-9]{100}/siU
(assert (not (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "=") ((_ re.loop 100 100) (re.union (re.range "a" "z") (re.range "1" "9"))) (str.to.re "/siU\x0a")))))
(check-sat)
