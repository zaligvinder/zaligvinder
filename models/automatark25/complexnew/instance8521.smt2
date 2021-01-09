(declare-const X String)
; /filename=[^\n]*\x2expm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xpm/i\x0a"))))
; ^([\w\s\W]+[\w\W]?)\s([\d\-\\\/\w]*)?
(assert (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.opt (re.* (re.union (re.range "0" "9") (str.to.re "-") (str.to.re "\x5c") (str.to.re "/") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (str.to.re "\x0a") (re.+ (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))))
; /^[a-z]{5}\d=_\d_/C
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 5 5) (re.range "a" "z")) (re.range "0" "9") (str.to.re "=_") (re.range "0" "9") (str.to.re "_/C\x0a")))))
(check-sat)
