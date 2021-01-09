(declare-const X String)
; DA\dwww\x2Ee-finder\x2Ecc.*User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "DA") (re.range "0" "9") (str.to.re "www.e-finder.cc") (re.* re.allchar) (str.to.re "User-Agent:\x0a")))))
; /\x2eeot([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.eot") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
