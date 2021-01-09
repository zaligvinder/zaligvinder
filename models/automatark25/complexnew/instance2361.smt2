(declare-const X String)
; /Referer\x3a\x20[^\s]*\x3a8000\x2f[a-z]+\?[a-z]+=\d{6,7}\x0d\x0a/H
(assert (str.in.re X (re.++ (str.to.re "/Referer: ") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ":8000/") (re.+ (re.range "a" "z")) (str.to.re "?") (re.+ (re.range "a" "z")) (str.to.re "=") ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "\x0d\x0a/H\x0a"))))
; /filename=[^\n]*\x2eses/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ses/i\x0a"))))
(check-sat)
