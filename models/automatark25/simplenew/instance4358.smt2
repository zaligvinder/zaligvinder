(declare-const X String)
; www\x2Ealtnet\x2Ecom[^\n\r]*Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "www.altnet.com\x1b") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:\x0a")))))
(check-sat)
