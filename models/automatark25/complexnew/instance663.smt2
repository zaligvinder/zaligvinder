(declare-const X String)
; /^\u{3c}meta\u{20}name\u{3d}\u{22}token\u{22}\u{20}content\u{3d}\u{22}\u{a4}[A-F\d]{168}\u{a4}\u{22}\u{2f}\u{3e}$/
(assert (str.in_re X (re.++ (str.to_re "/<meta name=\u{22}token\u{22} content=\u{22}\u{a4}") ((_ re.loop 168 168) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "\u{a4}\u{22}/>/\u{a}"))))
; Host\u{3A}\d+zmnjgmomgbdz\u{2f}zzmw\.gzt%3ftoolbar\u{2E}i-lookup\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "zmnjgmomgbdz/zzmw.gzt%3ftoolbar.i-lookup.com\u{a}")))))
; ad\u{2E}mokead\u{2E}com\d+Spy\d+ZOMBIES\u{5f}HTTP\u{5f}GETearch\u{2E}earthlinkwww\u{2E}purityscan\u{2E}comUser-Agent\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "ad.mokead.com") (re.+ (re.range "0" "9")) (str.to_re "Spy") (re.+ (re.range "0" "9")) (str.to_re "ZOMBIES_HTTP_GETearch.earthlinkwww.purityscan.comUser-Agent:\u{a}")))))
(check-sat)
