(declare-const X String)
; Referer\u{3A}.*User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Referer:") (re.* re.allchar) (str.to_re "User-Agent:\u{a}")))))
(check-sat)
