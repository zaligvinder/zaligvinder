(declare-const X String)
; User-Agent\u{3A}MailerGuarded
(assert (not (str.in_re X (str.to_re "User-Agent:MailerGuarded\u{a}"))))
; wjpropqmlpohj\u{2f}lo\d+Host\u{3A}User-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "wjpropqmlpohj/lo") (re.+ (re.range "0" "9")) (str.to_re "Host:User-Agent:\u{a}"))))
(check-sat)
