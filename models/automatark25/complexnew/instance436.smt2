(declare-const X String)
; twfofrfzlugq\x2feve\.qd\d+
(assert (not (str.in.re X (re.++ (str.to.re "twfofrfzlugq/eve.qd") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; \x7D\x7BTrojan\x3ASubject\x3Aversion
(assert (str.in.re X (str.to.re "}{Trojan:Subject:version\x0a")))
; ^\d+\/?\d*$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to.re "/")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
