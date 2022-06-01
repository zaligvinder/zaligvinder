(declare-const X String)
; Serverwjpropqmlpohj\u{2f}loHost\u{3A}KEY=
(assert (not (str.in_re X (str.to_re "Serverwjpropqmlpohj/loHost:KEY=\u{a}"))))
; subject\u{3A}.*Login\s+adfsgecoiwnf
(assert (str.in_re X (re.++ (str.to_re "subject:") (re.* re.allchar) (str.to_re "Login") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "adfsgecoiwnf\u{1b}\u{a}"))))
; this\s+MyBrowser\d+Redirector\u{22}ServerHost\u{3A}X-Mailer\u{3A}
(assert (str.in_re X (re.++ (str.to_re "this") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "MyBrowser") (re.+ (re.range "0" "9")) (str.to_re "Redirector\u{22}ServerHost:X-Mailer:\u{13}\u{a}"))))
; Subject\u{3A}LOGX-Mailer\u{3a}
(assert (not (str.in_re X (str.to_re "Subject:LOGX-Mailer:\u{13}\u{a}"))))
(check-sat)
