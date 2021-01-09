(declare-const X String)
; searchnugget.*Referer\x3A\s+User-Agent\x3AHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "searchnugget\x13") (re.* re.allchar) (str.to.re "Referer:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:Host:\x0a")))))
(check-sat)
