(declare-const X String)
; /\/setup.cgi.*?TimeToLive=[^&]*?(%60|\u{60})/iU
(assert (str.in_re X (re.++ (str.to_re "//setup") re.allchar (str.to_re "cgi") (re.* re.allchar) (str.to_re "TimeToLive=") (re.* (re.comp (str.to_re "&"))) (re.union (str.to_re "%60") (str.to_re "`")) (str.to_re "/iU\u{a}"))))
(check-sat)
