(declare-const X String)
; log\=\x7BIP\x3AIP-PortaURLSSKC\x7croogoo\x7c\.cfgmPOPrtCUSTOMPalToolbarUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "log={IP:IP-PortaURLSSKC|roogoo|.cfgmPOPrtCUSTOMPalToolbarUser-Agent:\x0a"))))
; /\x2em4a([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.m4a") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; pass=Referer\x3ASurveillance
(assert (str.in.re X (str.to.re "pass=Referer:Surveillance\x13\x0a")))
; www\x2Eeblocs\x2Ecomcorep\x2Edmcast\x2Ecom
(assert (str.in.re X (str.to.re "www.eblocs.com\x1bcorep.dmcast.com\x0a")))
(check-sat)
