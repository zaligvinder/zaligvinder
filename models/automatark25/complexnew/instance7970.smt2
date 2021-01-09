(declare-const X String)
; /\x2ewmv([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.wmv") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /\/loader\.cpl$/U
(assert (not (str.in.re X (str.to.re "//loader.cpl/U\x0a"))))
; iz=Referer\x3Aoffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in.re X (str.to.re "iz=Referer:offers.bullseye-network.com\x0a"))))
(check-sat)
