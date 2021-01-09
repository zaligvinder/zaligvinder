(declare-const X String)
; zmnjgmomgbdz\x2fzzmw\.gzt.*www\x2Ealtnet\x2Ecom.*User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "zmnjgmomgbdz/zzmw.gzt") (re.* re.allchar) (str.to.re "www.altnet.com\x1b") (re.* re.allchar) (str.to.re "User-Agent:\x0a"))))
(check-sat)
