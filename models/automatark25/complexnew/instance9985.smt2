(declare-const X String)
; /[^\x20-\x7e\r\n]{3}/P
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 3 3) (re.union (re.range " " "~") (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "/P\x0a")))))
; /^GET\s\x2f[A-F0-9]{152}/m
(assert (str.in.re X (re.++ (str.to.re "/GET") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/") ((_ re.loop 152 152) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "/m\x0a"))))
; /Content-Disposition\x3a\x20inline\x3b[^\x0d\x0a]filename=[a-z]{5,8}\d{2,3}\.pdf\x0d\x0a/Hm
(assert (str.in.re X (re.++ (str.to.re "/Content-Disposition: inline;") (re.union (str.to.re "\x0d") (str.to.re "\x0a")) (str.to.re "filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ".pdf\x0d\x0a/Hm\x0a"))))
; Host\x3A\s+Online\s+ocllceclbhs\x2fgth
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Online") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ocllceclbhs/gth\x0a"))))
(check-sat)
