(declare-const X String)
; Subject\u{3A}\d+AgentUser-Agent\u{3a}hasHost\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.range "0" "9")) (str.to_re "AgentUser-Agent:hasHost:\u{a}")))))
(check-sat)
