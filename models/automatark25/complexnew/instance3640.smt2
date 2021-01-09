(declare-const X String)
; ^[0-9]*[1-9]+[0-9]*$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; Port\s+AgentHost\x3Ainsertkeys\x3Ckeys\x40hotpop
(assert (str.in.re X (re.++ (str.to.re "Port") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "AgentHost:insertkeys<keys@hotpop\x0a"))))
; (\d+(-\d+)*)+(,\d+(-\d+)*)*
(assert (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to.re "-") (re.+ (re.range "0" "9")))))) (re.* (re.++ (str.to.re ",") (re.+ (re.range "0" "9")) (re.* (re.++ (str.to.re "-") (re.+ (re.range "0" "9")))))) (str.to.re "\x0a"))))
(check-sat)
