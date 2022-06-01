(declare-const X String)
; YAHOO.*Host\u{3A}.*\u{2F}cs\u{2F}pop4\u{2F}
(assert (not (str.in_re X (re.++ (str.to_re "YAHOO") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "/cs/pop4/\u{a}")))))
(check-sat)
