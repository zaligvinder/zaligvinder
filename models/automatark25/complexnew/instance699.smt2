(declare-const X String)
; /Referer\x3a\x20[^\s]*\x3a8000\x2f[a-z]+\?[a-z]+=\d{6,7}\x0d\x0a/H
(assert (not (str.in.re X (re.++ (str.to.re "/Referer: ") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ":8000/") (re.+ (re.range "a" "z")) (str.to.re "?") (re.+ (re.range "a" "z")) (str.to.re "=") ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "\x0d\x0a/H\x0a")))))
; www\x2Epcsentinelsoftware\x2Ecom
(assert (str.in.re X (str.to.re "www.pcsentinelsoftware.com\x0a")))
(check-sat)
