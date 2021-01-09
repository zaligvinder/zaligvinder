(declare-const X String)
; Host\x3A.*Basic.*ProtoUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "Basic") (re.* re.allchar) (str.to.re "ProtoUser-Agent:\x0a")))))
(check-sat)
