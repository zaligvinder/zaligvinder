(declare-const X String)
; User-Agent\u{3A}twfofrfzlugq\u{2f}eve\.qduuid=ppcdomain\u{2E}co\u{2E}ukGuardedReferer\u{3A}readyLOGUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "User-Agent:twfofrfzlugq/eve.qduuid=ppcdomain.co.ukGuardedReferer:readyLOGUser-Agent:\u{a}"))))
; GmbH\u{2F}communicatortbHost\u{3A}User-Agent\u{3A}adblock\u{2E}linkz\u{2E}com
(assert (str.in_re X (str.to_re "GmbH/communicatortbHost:User-Agent:adblock.linkz.com\u{a}")))
; ^([0-9a-fA-F]){8}$
(assert (not (str.in_re X (re.++ ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re "\u{a}")))))
; u=with\u{3A}HBand,Deathhoroscope2
(assert (str.in_re X (str.to_re "u=with:HBand,Deathhoroscope2\u{a}")))
(check-sat)
