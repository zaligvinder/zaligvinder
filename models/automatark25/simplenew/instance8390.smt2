(declare-const X String)
; Desktop.*Hello\u{2E}.*Referer\u{3A}Toolbar
(assert (not (str.in_re X (re.++ (str.to_re "Desktop") (re.* re.allchar) (str.to_re "Hello.") (re.* re.allchar) (str.to_re "Referer:Toolbar\u{a}")))))
(check-sat)
