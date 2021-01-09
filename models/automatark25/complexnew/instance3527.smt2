(declare-const X String)
; User-Agent\x3Atwfofrfzlugq\x2feve\.qduuid=ppcdomain\x2Eco\x2EukGuardedReferer\x3AreadyLOGUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "User-Agent:twfofrfzlugq/eve.qduuid=ppcdomain.co.ukGuardedReferer:readyLOGUser-Agent:\x0a"))))
; GmbH\x2FcommunicatortbHost\x3AUser-Agent\x3Aadblock\x2Elinkz\x2Ecom
(assert (str.in.re X (str.to.re "GmbH/communicatortbHost:User-Agent:adblock.linkz.com\x0a")))
; ^([0-9a-fA-F]){8}$
(assert (not (str.in.re X (re.++ ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "\x0a")))))
; u=with\x3AHBand,Deathhoroscope2
(assert (str.in.re X (str.to.re "u=with:HBand,Deathhoroscope2\x0a")))
(check-sat)
