(declare-const X String)
; /\/setup.cgi.*?TimeToLive=[^&]*?(%60|\x60)/iU
(assert (str.in.re X (re.++ (str.to.re "//setup") re.allchar (str.to.re "cgi") (re.* re.allchar) (str.to.re "TimeToLive=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "%60") (str.to.re "`")) (str.to.re "/iU\x0a"))))
(check-sat)
