(declare-const X String)
; <title>+(.*?)</title>
(assert (not (str.in_re X (re.++ (str.to_re "<title") (re.+ (str.to_re ">")) (re.* re.allchar) (str.to_re "</title>\u{a}")))))
(check-sat)
