(declare-const X String)
; /filename=[^\n]*\x2eogx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ogx/i\x0a"))))
; \[\w+\]\s+((.*=.*\s+)*|[^\[])
(assert (not (str.in.re X (re.++ (str.to.re "[") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "]") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.* (re.++ (re.* re.allchar) (str.to.re "=") (re.* re.allchar) (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (re.comp (str.to.re "["))) (str.to.re "\x0a")))))
; \x03\x00\x1c\x00\x00\x00\x00\x00\x01Furax
(assert (not (str.in.re X (str.to.re "\x03\x00\x1c\x00\x00\x00\x00\x00\x01Furax\x0a"))))
(check-sat)
