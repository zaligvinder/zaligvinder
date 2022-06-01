(declare-const X String)
; ^\d+([.,]?\d+)?$
(assert (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to_re ".") (str.to_re ","))) (re.+ (re.range "0" "9")))) (str.to_re "\u{a}"))))
; www\u{2E}yok\u{2E}com\s+jupitersatellites\u{2E}biz.*User-Agent\u{3A}clvompycem\u{2f}cen\.vcn
(assert (not (str.in_re X (re.++ (str.to_re "www.yok.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "jupitersatellites.biz") (re.* re.allchar) (str.to_re "User-Agent:clvompycem/cen.vcn\u{a}")))))
; offers\u{2E}bullseye-network\u{2E}com\s+news[^\n\r]*WatcherUser-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "offers.bullseye-network.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "news") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "WatcherUser-Agent:\u{a}")))))
; ^([A-Z][a-z]+)\s([A-Z][a-zA-Z-]+)$
(assert (str.in_re X (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "\u{a}") (re.range "A" "Z") (re.+ (re.range "a" "z")) (re.range "A" "Z") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "-"))))))
(check-sat)
