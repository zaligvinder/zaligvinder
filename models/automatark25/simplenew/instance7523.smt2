(declare-const X String)
; Subject\u{3A}.*User-Agent\u{3A}.*ResultATTENTION\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.* re.allchar) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "ResultATTENTION:\u{a}")))))
(check-sat)
