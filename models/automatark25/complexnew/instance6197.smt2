(declare-const X String)
; to\s+Host\x3AWeHost\x3a
(assert (str.in.re X (re.++ (str.to.re "to") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:WeHost:\x0a"))))
; /\x2ejar([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.jar") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; Subject\x3A\swww\x2Esearchwords\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.searchwords.com\x0a"))))
; for[^\n\r]*Host\x3A\sinternalcyber@yahoo\x2EcomHeadersRedirection
(assert (str.in.re X (re.++ (str.to.re "for") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "internalcyber@yahoo.comHeadersRedirection\x0a"))))
; User-Agent\x3aHost\x3AHost\x3ASpyBuddy
(assert (not (str.in.re X (str.to.re "User-Agent:Host:Host:SpyBuddy\x0a"))))
(check-sat)
