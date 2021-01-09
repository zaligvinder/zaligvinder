(declare-const X String)
; /\*.+?\*/
(assert (str.in.re X (re.++ (str.to.re "/*") (re.+ re.allchar) (str.to.re "*/\x0a"))))
; This\s+\x7D\x7BPassword\x3A\d+
(assert (str.in.re X (re.++ (str.to.re "This") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Password:\x1b") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
