(declare-const X String)
; \x2Fcs\x2Fpop4\x2F\s+data\.warezclient\.com
(assert (not (str.in.re X (re.++ (str.to.re "/cs/pop4/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "data.warezclient.com\x0a")))))
(check-sat)
