(declare-const X String)
; @"^\d[a-zA-Z0-9]+$"
(assert (not (str.in.re X (re.++ (str.to.re "@\x22") (re.range "0" "9") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x22\x0a")))))
; /\.png$/Ui
(assert (str.in.re X (str.to.re "/.png/Ui\x0a")))
(check-sat)
