(declare-const X String)
; /filename=[a-z]{5,8}\d{2,3}\.xap\x0d\x0a/Hm
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ".xap\x0d\x0a/Hm\x0a")))))
; (\d*)'*-*(\d*)/*(\d*)"
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.* (str.to.re "'")) (re.* (str.to.re "-")) (re.* (re.range "0" "9")) (re.* (str.to.re "/")) (re.* (re.range "0" "9")) (str.to.re "\x22\x0a")))))
; .*[a-zA-Z]$
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2eplp/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".plp/i\x0a"))))
(check-sat)
