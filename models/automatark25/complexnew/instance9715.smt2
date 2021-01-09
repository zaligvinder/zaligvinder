(declare-const X String)
; /\x00hide hide\x22\x09\x22([a-z0-9\x5c\x2e\x3a]+\x2eexe|sh)/
(assert (not (str.in.re X (re.++ (str.to.re "/\x00hide hide\x22\x09\x22") (re.union (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "\x5c") (str.to.re ".") (str.to.re ":"))) (str.to.re ".exe")) (str.to.re "sh")) (str.to.re "/\x0a")))))
; sql.*badurl\x2Egrandstreetinteractive\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "sql") (re.* re.allchar) (str.to.re "badurl.grandstreetinteractive.com\x0a"))))
(check-sat)
