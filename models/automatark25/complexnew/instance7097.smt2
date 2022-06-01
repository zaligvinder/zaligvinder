(declare-const X String)
; log\=\u{7B}IP\u{3A}IP-PortaURLSSKC\u{7c}roogoo\u{7c}\.cfgmPOPrtCUSTOMPalToolbarUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "log={IP:IP-PortaURLSSKC|roogoo|.cfgmPOPrtCUSTOMPalToolbarUser-Agent:\u{a}"))))
; /\u{2e}m4a([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.m4a") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; pass=Referer\u{3A}Surveillance
(assert (str.in_re X (str.to_re "pass=Referer:Surveillance\u{13}\u{a}")))
; www\u{2E}eblocs\u{2E}comcorep\u{2E}dmcast\u{2E}com
(assert (str.in_re X (str.to_re "www.eblocs.com\u{1b}corep.dmcast.com\u{a}")))
(check-sat)
