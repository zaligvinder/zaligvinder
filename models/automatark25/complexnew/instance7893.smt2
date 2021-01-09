(declare-const X String)
; /filename=[^\n]*\x2eaif/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".aif/i\x0a"))))
; ^[0-9][0-9,]*[0-9]$
(assert (not (str.in.re X (re.++ (re.range "0" "9") (re.* (re.union (re.range "0" "9") (str.to.re ","))) (re.range "0" "9") (str.to.re "\x0a")))))
(check-sat)
