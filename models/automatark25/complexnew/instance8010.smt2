(declare-const X String)
; /filename=[^\n]*\x2ejp2/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jp2/i\x0a"))))
; ([0-9a-zA-Z]+)|([0-9a-zA-Z][0-9a-zA-Z\\s]+[0-9a-zA-Z]+)
(assert (not (str.in.re X (re.union (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to.re "\x0a") (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")) (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "\x5c") (str.to.re "s"))) (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))))))))
(check-sat)
