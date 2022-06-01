(declare-const X String)
; Host\u{3A}\s+twfofrfzlugq\u{2f}eve\.qd\s+\u{2F}toolbar\u{2F}supremetb
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "twfofrfzlugq/eve.qd") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/toolbar/supremetb\u{a}"))))
; ^[a-zA-Z]{1,3}\[([0-9]{1,3})\]
(assert (str.in_re X (re.++ ((_ re.loop 1 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "[") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "]\u{a}"))))
; onAlertMGS-Internal-Web-Manager
(assert (not (str.in_re X (str.to_re "onAlertMGS-Internal-Web-Manager\u{a}"))))
(check-sat)
