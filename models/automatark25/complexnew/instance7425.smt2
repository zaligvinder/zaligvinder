(declare-const X String)
; /\x2ejar([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.jar") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; Subject\x3A\swww\x2Esearchwords\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.searchwords.com\x0a")))))
; shprrprt-cs-Pre\x2Fta\x2FNEWS\x2F
(assert (not (str.in.re X (str.to.re "shprrprt-cs-\x13Pre/ta/NEWS/\x0a"))))
; Spy\dccecaedbebfcaf\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Spy") (re.range "0" "9") (str.to.re "ccecaedbebfcaf.com\x0a")))))
(check-sat)
