(declare-const X String)
; www\u{2E}pcsentinelsoftware\u{2E}com
(assert (not (str.in_re X (str.to_re "www.pcsentinelsoftware.com\u{a}"))))
; ^([0-9a-fA-F]){8}$
(assert (str.in_re X (re.++ ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re "\u{a}"))))
; www\u{2E}yok\u{2E}com\s+jupitersatellites\u{2E}biz.*User-Agent\u{3A}clvompycem\u{2f}cen\.vcn
(assert (not (str.in_re X (re.++ (str.to_re "www.yok.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "jupitersatellites.biz") (re.* re.allchar) (str.to_re "User-Agent:clvompycem/cen.vcn\u{a}")))))
; \u{2F}cgi\u{2F}logurl\.cgi\s+IDENTIFY.*max-www\u{2E}u88\u{2E}cn
(assert (not (str.in_re X (re.++ (str.to_re "/cgi/logurl.cgi") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "IDENTIFY") (re.* re.allchar) (str.to_re "max-www.u88.cn\u{a}")))))
(check-sat)
