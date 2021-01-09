(declare-const X String)
; /^GET\s\x2f[A-F0-9]{152}/m
(assert (str.in.re X (re.++ (str.to.re "/GET") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/") ((_ re.loop 152 152) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "/m\x0a"))))
; /\.gif\x3f[a-f0-9]{4,7}\x3d\d{6,8}$/U
(assert (str.in.re X (re.++ (str.to.re "/.gif?") ((_ re.loop 4 7) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "=") ((_ re.loop 6 8) (re.range "0" "9")) (str.to.re "/U\x0a"))))
; EFError\swww\x2emalware-stopper\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "EFError") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.malware-stopper.com\x0a")))))
(check-sat)
