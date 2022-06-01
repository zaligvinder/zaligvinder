(declare-const X String)
; e2give\.com.*Redirector\u{22}.*Host\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "e2give.com") (re.* re.allchar) (str.to_re "Redirector\u{22}") (re.* re.allchar) (str.to_re "Host:\u{a}")))))
(check-sat)
