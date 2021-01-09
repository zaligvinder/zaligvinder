(declare-const X String)
; /\x2ebcl([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.bcl") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; addrwww\x2Etrustedsearch\x2EcomX-Mailer\x3A
(assert (str.in.re X (str.to.re "addrwww.trustedsearch.comX-Mailer:\x13\x0a")))
; \x22StarLogger\x22\w+Host\x3aSoftwareHost\x3AjokeWEBCAM-
(assert (not (str.in.re X (re.++ (str.to.re "\x22StarLogger\x22") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:SoftwareHost:jokeWEBCAM-\x0a")))))
(check-sat)
