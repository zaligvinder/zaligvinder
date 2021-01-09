(declare-const X String)
; /^GET\x20\/plus\x2easp\?[^\r\n]*?query=[a-z0-9+\/]{2,40}@{0,2}/i
(assert (not (str.in.re X (re.++ (str.to.re "/GET /plus.asp?") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "query=") ((_ re.loop 2 40) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/"))) ((_ re.loop 0 2) (str.to.re "@")) (str.to.re "/i\x0a")))))
; /\x2eogg([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.ogg") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; \.exe\s+v2\x2E0\s+smrtshpr-cs-
(assert (not (str.in.re X (re.++ (str.to.re ".exe") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "v2.0") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "smrtshpr-cs-\x13\x0a")))))
; www\x2Eyok\x2Ecom\s+jupitersatellites\x2Ebiz.*User-Agent\x3Aclvompycem\x2fcen\.vcn
(assert (not (str.in.re X (re.++ (str.to.re "www.yok.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "jupitersatellites.biz") (re.* re.allchar) (str.to.re "User-Agent:clvompycem/cen.vcn\x0a")))))
; /\xb6\xb6\xff\xff\xff\xff$/
(assert (str.in.re X (str.to.re "/\xb6\xb6\xff\xff\xff\xff/\x0a")))
(check-sat)
