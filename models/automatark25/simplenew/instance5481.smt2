(declare-const X String)
; ad\u{2E}mokead\u{2E}com\d+Spy\d+ZOMBIES\u{5f}HTTP\u{5f}GETearch\u{2E}earthlinkwww\u{2E}purityscan\u{2E}comUser-Agent\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "ad.mokead.com") (re.+ (re.range "0" "9")) (str.to_re "Spy") (re.+ (re.range "0" "9")) (str.to_re "ZOMBIES_HTTP_GETearch.earthlinkwww.purityscan.comUser-Agent:\u{a}")))))
(check-sat)
