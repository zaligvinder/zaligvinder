(declare-const X String)
; /g\/\d{9}\/[0-9a-f]{32}\/[0-9]$/U
(assert (not (str.in.re X (re.++ (str.to.re "/g/") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "/") (re.range "0" "9") (str.to.re "/U\x0a")))))
; /filename=[^\n]*\x2ewma/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wma/i\x0a"))))
(check-sat)
