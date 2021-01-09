(declare-const X String)
; from\x3AUser-Agent\x3AChildWebGuardian
(assert (str.in.re X (str.to.re "from:User-Agent:ChildWebGuardian\x0a")))
(check-sat)
