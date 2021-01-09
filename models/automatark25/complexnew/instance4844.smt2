(declare-const X String)
; /filename=[^\n]*\x2epmd/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pmd/i\x0a"))))
; /filename=[^\n]*\x2ebak/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".bak/i\x0a")))))
; /^SpyBuddy\s+Alert/smi
(assert (not (str.in.re X (re.++ (str.to.re "/SpyBuddy") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Alert/smi\x0a")))))
; ^([0-9A-Za-z@.]{1,255})$
(assert (str.in.re X (re.++ ((_ re.loop 1 255) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "@") (str.to.re "."))) (str.to.re "\x0a"))))
(check-sat)
