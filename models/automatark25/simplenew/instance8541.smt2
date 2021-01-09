(declare-const X String)
; /^From\x3a[^\r\n]*SpyBuddy/smi
(assert (str.in.re X (re.++ (str.to.re "/From:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "SpyBuddy/smi\x0a"))))
(check-sat)
