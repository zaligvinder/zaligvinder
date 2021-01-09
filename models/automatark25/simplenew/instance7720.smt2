(declare-const X String)
; Server.*Host\x3a.*SpyAgentRootHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Server") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "SpyAgentRootHost:\x0a")))))
(check-sat)
