(declare-const X String)
; www\x2Eyok\x2Ecom\s+jupitersatellites\x2Ebiz.*User-Agent\x3Aclvompycem\x2fcen\.vcn
(assert (str.in.re X (re.++ (str.to.re "www.yok.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "jupitersatellites.biz") (re.* re.allchar) (str.to.re "User-Agent:clvompycem/cen.vcn\x0a"))))
; /\x2ej2k([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.j2k") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; (\s*\S*){2}(ipsum)(\S*\s*){2}
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))) (str.to.re "ipsum") ((_ re.loop 2 2) (re.++ (re.* (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "\x0a"))))
; (^0[78][2347][0-9]{7})
(assert (not (str.in.re X (re.++ (str.to.re "\x0a0") (re.union (str.to.re "7") (str.to.re "8")) (re.union (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "7")) ((_ re.loop 7 7) (re.range "0" "9"))))))
(check-sat)
