(declare-const X String)
; zmnjgmomgbdz\x2fzzmw\.gzt.*www\x2Ealtnet\x2Ecom.*User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "zmnjgmomgbdz/zzmw.gzt") (re.* re.allchar) (str.to.re "www.altnet.com\x1b") (re.* re.allchar) (str.to.re "User-Agent:\x0a"))))
; nick_name=CIA-Test\d+url=http\x3A\d+\x2FNFO\x2CRegistered\x28BDLL\x29
(assert (not (str.in.re X (re.++ (str.to.re "nick_name=CIA-Test") (re.+ (re.range "0" "9")) (str.to.re "url=http:\x1b") (re.+ (re.range "0" "9")) (str.to.re "/NFO,Registered(BDLL)\x13\x0a")))))
(check-sat)
