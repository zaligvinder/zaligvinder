(declare-const X String)
; Contact\d+Host\u{3A}[^\n\r]*User-Agent\u{3A}Host\u{3a}MailHost\u{3a}MSNLOGOVN
(assert (not (str.in_re X (re.++ (str.to_re "Contact") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:Host:MailHost:MSNLOGOVN\u{a}")))))
(check-sat)
