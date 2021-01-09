(declare-const X String)
; ^\d*\d?((5)|(0))\.?((0)|(00))?$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.union (str.to.re "5") (str.to.re "0")) (re.opt (str.to.re ".")) (re.opt (re.union (str.to.re "0") (str.to.re "00"))) (str.to.re "\x0a"))))
; /filename=[a-z]+\.jat/
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.+ (re.range "a" "z")) (str.to.re ".jat/\x0a")))))
; User-Agent\x3A\s+\x7D\x7BPassword\x3AAnal
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Password:\x1bAnal\x0a")))))
(check-sat)
