(declare-const X String)
; /\/load_module\.php\?user\=(n1|1|2|11)$/U
(assert (str.in.re X (re.++ (str.to.re "//load_module.php?user=") (re.union (str.to.re "n1") (str.to.re "1") (str.to.re "2") (str.to.re "11")) (str.to.re "/U\x0a"))))
; Keylogger\w+Owner\x3A\dBetaWordixqshv\x2fqzccsServer\x00MyBYReferer\x3Awww\x2Eccnnlc\x2Ecom\x04\x00
(assert (not (str.in.re X (re.++ (str.to.re "Keylogger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:") (re.range "0" "9") (str.to.re "BetaWordixqshv/qzccsServer\x00MyBYReferer:www.ccnnlc.com\x13\x04\x00\x0a")))))
(check-sat)
