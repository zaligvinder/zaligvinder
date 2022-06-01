(declare-const X String)
; TOOLBARX-Mailer\u{3a}+dist\u{2E}atlas\u{2D}ia\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "TOOLBARX-Mailer") (re.+ (str.to_re ":")) (str.to_re "dist.atlas-ia.com\u{a}")))))
; Keystrokes.*LOG.*Host\u{3A}www\u{2E}serverlogic3\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Keystrokes") (re.* re.allchar) (str.to_re "LOG") (re.* re.allchar) (str.to_re "Host:www.serverlogic3.com\u{a}")))))
(check-sat)
