(declare-const X String)
; SoftActivity\s+User-Agent\u{3A}.*LogsHost\u{3A}Host\u{3A}X-Mailer\u{3a}
(assert (str.in_re X (re.++ (str.to_re "SoftActivity\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "LogsHost:Host:X-Mailer:\u{13}\u{a}"))))
(check-sat)
