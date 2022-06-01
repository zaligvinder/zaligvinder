(declare-const X String)
; URLBlaze.*User-Agent\u{3A}.*mPOPUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "URLBlaze") (re.* re.allchar) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "mPOPUser-Agent:\u{a}"))))
(check-sat)
