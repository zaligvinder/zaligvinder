(declare-const X String)
; ^[0-9,]+['][-](\d|1[01])"$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to.re ","))) (str.to.re "'-") (re.union (re.range "0" "9") (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "\x22\x0a"))))
; ((\(\d{3,4}\)|\d{3,4}-)\d{4,9}(-\d{1,5}|\d{0}))|(\d{4,12})
(assert (not (str.in.re X (re.union (re.++ (re.union (re.++ (str.to.re "(") ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re ")")) (re.++ ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re "-"))) ((_ re.loop 4 9) (re.range "0" "9")) (re.union (re.++ (str.to.re "-") ((_ re.loop 1 5) (re.range "0" "9"))) ((_ re.loop 0 0) (re.range "0" "9")))) (re.++ ((_ re.loop 4 12) (re.range "0" "9")) (str.to.re "\x0a"))))))
; st=\s+Stopper\s+Host\x3AAgentProjectMyWebSearchSearchAssistant
(assert (not (str.in.re X (re.++ (str.to.re "st=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Stopper") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:AgentProjectMyWebSearchSearchAssistant\x0a")))))
; url=\d+Host\x3A.*backtrust\x2Ecomv\x2ELoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?
(assert (not (str.in.re X (re.++ (str.to.re "url=") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.* re.allchar) (str.to.re "backtrust.comv.LoginHost:/friendship/email_thank_you?\x0a")))))
(check-sat)
