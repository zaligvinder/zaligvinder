(declare-const X String)
; /\u{2e}mim([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.mim") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; securityOmFkbWluADROARad\u{2E}mokead\u{2E}com\u{3C}\u{2F}chat\u{3E}
(assert (str.in_re X (str.to_re "securityOmFkbWluADROARad.mokead.com</chat>\u{a}")))
; cyber@yahoo\u{2E}comconfig\u{2E}180solutions\u{2E}com
(assert (not (str.in_re X (str.to_re "cyber@yahoo.comconfig.180solutions.com\u{a}"))))
; Host\u{3A}hjhgquqssq\u{2f}pjmonHost\u{3A}Host\u{3A}A-311byName=Your\+Host\+is\u{3A}
(assert (not (str.in_re X (str.to_re "Host:hjhgquqssq/pjmonHost:Host:A-311byName=Your+Host+is:\u{a}"))))
; Send=\s+User-Agent\u{3A}\s+LoginHost\u{3a}\u{2F}friendship\u{2F}email_thank_you\?Host\u{3a}CenterSubject\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Send=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "LoginHost:/friendship/email_thank_you?Host:CenterSubject:\u{a}")))))
(check-sat)
