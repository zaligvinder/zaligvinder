(declare-const X String)
; \x03\x00\x1c\x00\x00\x00\x00\x00\x01Furax
(assert (str.in.re X (str.to.re "\x03\x00\x1c\x00\x00\x00\x00\x00\x01Furax\x0a")))
; quick\x2Eqsrch\x2Ecom\s+Apofis\d+ToolBar
(assert (not (str.in.re X (re.++ (str.to.re "quick.qsrch.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Apofis") (re.+ (re.range "0" "9")) (str.to.re "ToolBar\x0a")))))
; /[^&]+&[a-z]=[a-f0-9]{16}&[a-z]=[a-f0-9]{16}$/U
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&") (re.range "a" "z") (str.to.re "=") ((_ re.loop 16 16) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "&") (re.range "a" "z") (str.to.re "=") ((_ re.loop 16 16) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
; ^\d{1,2}\/\d{2,4}$
(assert (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; /^images.php\?t=\d{2,7}$/U
(assert (str.in.re X (re.++ (str.to.re "/images") re.allchar (str.to.re "php?t=") ((_ re.loop 2 7) (re.range "0" "9")) (str.to.re "/U\x0a"))))
(check-sat)
