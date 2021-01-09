(declare-const X String)
; \x22StarLogger\x22\w+Host\x3aSoftwareHost\x3AjokeWEBCAM-
(assert (str.in.re X (re.++ (str.to.re "\x22StarLogger\x22") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:SoftwareHost:jokeWEBCAM-\x0a"))))
(check-sat)
