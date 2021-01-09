(declare-const X String)
; ovplHost\x3AHost\x3ADownloadUser
(assert (str.in.re X (str.to.re "ovplHost:Host:DownloadUser\x0a")))
; .*[a-zA-Z]$
(assert (str.in.re X (re.++ (re.* re.allchar) (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re "\x0a"))))
; DigExt.*\x23\x23\x23\x23
(assert (str.in.re X (re.++ (str.to.re "DigExt") (re.* re.allchar) (str.to.re "####\x0a"))))
(check-sat)
