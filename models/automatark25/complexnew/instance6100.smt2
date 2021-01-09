(declare-const X String)
; AgentanswerHost\x3Atool\x2Eworld2\x2EcnTCwhenu\x2Ecom
(assert (not (str.in.re X (str.to.re "AgentanswerHost:tool.world2.cn\x13TCwhenu.com\x13\x0a"))))
; ^07[789]-\d{7}$
(assert (str.in.re X (re.++ (str.to.re "07") (re.union (str.to.re "7") (str.to.re "8") (str.to.re "9")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; ((\+351|00351|351)?)(2\d{1}|(9(3|6|2|1)))\d{7}
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "+351") (str.to.re "00351") (str.to.re "351"))) (re.union (re.++ (str.to.re "2") ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to.re "9") (re.union (str.to.re "3") (str.to.re "6") (str.to.re "2") (str.to.re "1")))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; Host\x3A\s+ulmxct\x2fmqoyc\s+securityOmFkbWluADROARad\x2Emokead\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ulmxct/mqoyc") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "securityOmFkbWluADROARad.mokead.com\x0a"))))
; \d+\s*[.'-]\s*\d+\s*[\d+.m\"]*
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re ".") (str.to.re "'") (str.to.re "-")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (re.range "0" "9") (str.to.re "+") (str.to.re ".") (str.to.re "m") (str.to.re "\x22"))) (str.to.re "\x0a")))))
(check-sat)
