(declare-const X String)
; [+]346[0-9]{8}
(assert (not (str.in.re X (re.++ (str.to.re "+346") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; richfind\x2Ecomdcww\x2Edmcast\x2Ecom
(assert (str.in.re X (str.to.re "richfind.comdcww.dmcast.com\x0a")))
; Port\s+AgentHost\x3Ainsertkeys\x3Ckeys\x40hotpop
(assert (str.in.re X (re.++ (str.to.re "Port") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "AgentHost:insertkeys<keys@hotpop\x0a"))))
; (\/\*(\s*|.*?)*\*\/)|(--.*)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "/*") (re.* (re.union (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar))) (str.to.re "*/")) (re.++ (str.to.re "\x0a--") (re.* re.allchar))))))
(check-sat)
