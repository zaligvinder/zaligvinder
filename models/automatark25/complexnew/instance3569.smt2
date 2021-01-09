(declare-const X String)
; /\x2ejmh([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.jmh") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ((079)|(078)|(077)){1}[0-9]{7}
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "079") (str.to.re "078") (str.to.re "077"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; sql.*badurl\x2Egrandstreetinteractive\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "sql") (re.* re.allchar) (str.to.re "badurl.grandstreetinteractive.com\x0a")))))
(check-sat)
