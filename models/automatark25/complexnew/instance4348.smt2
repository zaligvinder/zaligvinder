(declare-const X String)
; ^[0-9,]+['][-](\d|1[01])"$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to_re ","))) (str.to_re "'-") (re.union (re.range "0" "9") (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "\u{22}\u{a}"))))
; ((\(\d{3,4}\)|\d{3,4}-)\d{4,9}(-\d{1,5}|\d{0}))|(\d{4,12})
(assert (not (str.in_re X (re.union (re.++ (re.union (re.++ (str.to_re "(") ((_ re.loop 3 4) (re.range "0" "9")) (str.to_re ")")) (re.++ ((_ re.loop 3 4) (re.range "0" "9")) (str.to_re "-"))) ((_ re.loop 4 9) (re.range "0" "9")) (re.union (re.++ (str.to_re "-") ((_ re.loop 1 5) (re.range "0" "9"))) ((_ re.loop 0 0) (re.range "0" "9")))) (re.++ ((_ re.loop 4 12) (re.range "0" "9")) (str.to_re "\u{a}"))))))
; st=\s+Stopper\s+Host\u{3A}AgentProjectMyWebSearchSearchAssistant
(assert (not (str.in_re X (re.++ (str.to_re "st=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Stopper") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:AgentProjectMyWebSearchSearchAssistant\u{a}")))))
; url=\d+Host\u{3A}.*backtrust\u{2E}comv\u{2E}LoginHost\u{3a}\u{2F}friendship\u{2F}email_thank_you\?
(assert (not (str.in_re X (re.++ (str.to_re "url=") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.* re.allchar) (str.to_re "backtrust.comv.LoginHost:/friendship/email_thank_you?\u{a}")))))
(check-sat)
