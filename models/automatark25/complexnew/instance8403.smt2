(declare-const X String)
; linkautomatici\x2Ecom\dBasic\d+Host\x3AFloodedFictionalUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "linkautomatici.com") (re.range "0" "9") (str.to.re "Basic") (re.+ (re.range "0" "9")) (str.to.re "Host:FloodedFictionalUser-Agent:\x0a"))))
; \b(0?[1-9]|1[0-2])(\/)(0?[1-9]|1[0-9]|2[0-9]|3[0-1])(\/)(200[0-8])\b
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "/\x0a200") (re.range "0" "8")))))
; /^Host\x3a\x20\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\r?\n/Hsmi
(assert (str.in.re X (re.++ (str.to.re "/Host: ") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (str.to.re "\x0d")) (str.to.re "\x0a/Hsmi\x0a"))))
(check-sat)
