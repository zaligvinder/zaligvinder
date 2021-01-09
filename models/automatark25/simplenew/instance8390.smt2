(declare-const X String)
; Desktop.*Hello\x2E.*Referer\x3AToolbar
(assert (not (str.in.re X (re.++ (str.to.re "Desktop") (re.* re.allchar) (str.to.re "Hello.") (re.* re.allchar) (str.to.re "Referer:Toolbar\x0a")))))
(check-sat)
