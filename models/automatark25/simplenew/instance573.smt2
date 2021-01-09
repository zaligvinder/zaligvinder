(declare-const X String)
; twfofrfzlugq\x2feve\.qd\d+
(assert (str.in.re X (re.++ (str.to.re "twfofrfzlugq/eve.qd") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
