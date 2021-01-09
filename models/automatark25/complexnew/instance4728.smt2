(declare-const X String)
; www\x2Epcsentinelsoftware\x2Ecom
(assert (not (str.in.re X (str.to.re "www.pcsentinelsoftware.com\x0a"))))
; ^([0-9a-fA-F]){8}$
(assert (str.in.re X (re.++ ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "\x0a"))))
; www\x2Eyok\x2Ecom\s+jupitersatellites\x2Ebiz.*User-Agent\x3Aclvompycem\x2fcen\.vcn
(assert (not (str.in.re X (re.++ (str.to.re "www.yok.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "jupitersatellites.biz") (re.* re.allchar) (str.to.re "User-Agent:clvompycem/cen.vcn\x0a")))))
; \x2Fcgi\x2Flogurl\.cgi\s+IDENTIFY.*max-www\x2Eu88\x2Ecn
(assert (not (str.in.re X (re.++ (str.to.re "/cgi/logurl.cgi") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "IDENTIFY") (re.* re.allchar) (str.to.re "max-www.u88.cn\x0a")))))
(check-sat)
