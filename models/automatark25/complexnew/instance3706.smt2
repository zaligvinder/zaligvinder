(declare-const X String)
; /filename=[^\n]*\u{2e}asx/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".asx/i\u{a}")))))
; .\{\d\}
(assert (str.in_re X (re.++ re.allchar (str.to_re "{") (re.range "0" "9") (str.to_re "}\u{a}"))))
(check-sat)
