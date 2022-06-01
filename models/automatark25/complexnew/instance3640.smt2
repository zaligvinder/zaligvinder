(declare-const X String)
; ^[0-9]*[1-9]+[0-9]*$
(assert (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to_re "\u{a}"))))
; Port\s+AgentHost\u{3A}insertkeys\u{3C}keys\u{40}hotpop
(assert (str.in_re X (re.++ (str.to_re "Port") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "AgentHost:insertkeys<keys@hotpop\u{a}"))))
; (\d+(-\d+)*)+(,\d+(-\d+)*)*
(assert (str.in_re X (re.++ (re.+ (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to_re "-") (re.+ (re.range "0" "9")))))) (re.* (re.++ (str.to_re ",") (re.+ (re.range "0" "9")) (re.* (re.++ (str.to_re "-") (re.+ (re.range "0" "9")))))) (str.to_re "\u{a}"))))
(check-sat)
