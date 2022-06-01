(declare-const X String)
; [+]346[0-9]{8}
(assert (not (str.in_re X (re.++ (str.to_re "+346") ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}")))))
; richfind\u{2E}comdcww\u{2E}dmcast\u{2E}com
(assert (str.in_re X (str.to_re "richfind.comdcww.dmcast.com\u{a}")))
; Port\s+AgentHost\u{3A}insertkeys\u{3C}keys\u{40}hotpop
(assert (str.in_re X (re.++ (str.to_re "Port") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "AgentHost:insertkeys<keys@hotpop\u{a}"))))
; (\/\*(\s*|.*?)*\*\/)|(--.*)
(assert (not (str.in_re X (re.union (re.++ (str.to_re "/*") (re.* (re.union (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* re.allchar))) (str.to_re "*/")) (re.++ (str.to_re "\u{a}--") (re.* re.allchar))))))
(check-sat)
