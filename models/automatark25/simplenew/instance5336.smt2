(declare-const X String)
; search\.dropspam\.com.*SupportFiles.*Referer\x3A
(assert (str.in.re X (re.++ (str.to.re "search.dropspam.com") (re.* re.allchar) (str.to.re "SupportFiles\x13") (re.* re.allchar) (str.to.re "Referer:\x0a"))))
(check-sat)
