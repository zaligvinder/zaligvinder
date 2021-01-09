(declare-const X String)
; Host\x3aSoftwareHost\x3AjokeWEBCAM-Server\x3a
(assert (str.in.re X (str.to.re "Host:SoftwareHost:jokeWEBCAM-Server:\x0a")))
(check-sat)
