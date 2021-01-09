(declare-const X String)
; <title>+(.*?)</title>
(assert (not (str.in.re X (re.++ (str.to.re "<title") (re.+ (str.to.re ">")) (re.* re.allchar) (str.to.re "</title>\x0a")))))
(check-sat)
