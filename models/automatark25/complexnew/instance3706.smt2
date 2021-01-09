(declare-const X String)
; /filename=[^\n]*\x2easx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".asx/i\x0a")))))
; .\{\d\}
(assert (str.in.re X (re.++ re.allchar (str.to.re "{") (re.range "0" "9") (str.to.re "}\x0a"))))
(check-sat)
