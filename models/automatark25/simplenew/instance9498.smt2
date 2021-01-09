(declare-const X String)
; www\x2Eezula\x2Ecom.*com[^\n\r]*SpyBuddy
(assert (not (str.in.re X (re.++ (str.to.re "www.ezula.com") (re.* re.allchar) (str.to.re "com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "SpyBuddy\x0a")))))
(check-sat)
