(declare-const X String)
; /(^|&)(db(username|password|)|cp(username|password|domain))=[^&]*?(\x27|%27)[^&]*?([\x3b\x60]|\x24\x28|%3b|%60|%24%28)/Pmi
(assert (str.in.re X (re.++ (str.to.re "/&") (re.union (re.++ (str.to.re "db") (re.union (str.to.re "username") (str.to.re "password"))) (re.++ (str.to.re "cp") (re.union (str.to.re "username") (str.to.re "password") (str.to.re "domain")))) (str.to.re "=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "'") (str.to.re "%27")) (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "$(") (str.to.re "%3b") (str.to.re "%60") (str.to.re "%24%28") (str.to.re ";") (str.to.re "`")) (str.to.re "/Pmi\x0a"))))
(check-sat)
