(declare-const X String)
; User-Agent\x3A\s+community\d+
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "community") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; ^(\d{4},?)+$
(assert (str.in.re X (re.++ (re.+ (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re ",")))) (str.to.re "\x0a"))))
(check-sat)
