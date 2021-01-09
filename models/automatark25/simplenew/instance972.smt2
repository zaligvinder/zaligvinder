(declare-const X String)
; Host\x3A.*Hello\x2E.*Referer\x3AToolbarCurrent\x3BCIA
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "Hello.") (re.* re.allchar) (str.to.re "Referer:ToolbarCurrent;CIA\x0a"))))
(check-sat)
