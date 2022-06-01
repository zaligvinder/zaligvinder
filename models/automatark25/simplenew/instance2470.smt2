(declare-const X String)
; www\u{2E}yok\u{2E}com\s+jupitersatellites\u{2E}biz.*User-Agent\u{3A}clvompycem\u{2f}cen\.vcn
(assert (not (str.in_re X (re.++ (str.to_re "www.yok.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "jupitersatellites.biz") (re.* re.allchar) (str.to_re "User-Agent:clvompycem/cen.vcn\u{a}")))))
(check-sat)
