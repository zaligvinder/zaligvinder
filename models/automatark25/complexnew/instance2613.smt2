(declare-const X String)
; /\x2eexe([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.exe") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; t=ProtoUser-Agent\x3Aquick\x2Eqsrch\x2Ecom
(assert (not (str.in.re X (str.to.re "t=ProtoUser-Agent:quick.qsrch.com\x0a"))))
(check-sat)
