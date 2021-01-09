(declare-const X String)
; /^(www\.|http:\/\/|https:\/\/|http:\/\/www\.|https:\/\/www\.)[a-z0-9]+\.[a-z]{2,4}$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "www.") (str.to.re "http://") (str.to.re "https://") (str.to.re "http://www.") (str.to.re "https://www.")) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 4) (re.range "a" "z")) (str.to.re "/\x0a"))))
; LogsHXLogOnlytoolbar\x2Ei-lookup\x2Ecom
(assert (str.in.re X (str.to.re "LogsHXLogOnlytoolbar.i-lookup.com\x0a")))
(check-sat)
