(declare-const X String)
; \x7D\x7BSysuptime\x3A\d+\x2Fcommunicatortb
(assert (str.in.re X (re.++ (str.to.re "}{Sysuptime:") (re.+ (re.range "0" "9")) (str.to.re "/communicatortb\x0a"))))
(check-sat)
