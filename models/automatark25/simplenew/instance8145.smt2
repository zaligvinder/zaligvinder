(declare-const X String)
; Subject\x3A\d+AgentUser-Agent\x3ahasHost\x3a
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.range "0" "9")) (str.to.re "AgentUser-Agent:hasHost:\x0a"))))
(check-sat)
