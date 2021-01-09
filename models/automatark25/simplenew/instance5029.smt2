(declare-const X String)
; URLBlaze.*User-Agent\x3A.*mPOPUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "URLBlaze") (re.* re.allchar) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "mPOPUser-Agent:\x0a")))))
(check-sat)
