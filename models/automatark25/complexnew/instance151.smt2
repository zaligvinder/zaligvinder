(declare-const X String)
; ^[1-9][0-9]{3}[ ]?(([a-rt-zA-RT-Z]{2})|([sS][^dasDAS]))$
(assert (str.in.re X (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re " ")) (re.union ((_ re.loop 2 2) (re.union (re.range "a" "r") (re.range "t" "z") (re.range "A" "R") (re.range "T" "Z"))) (re.++ (re.union (str.to.re "s") (str.to.re "S")) (re.union (str.to.re "d") (str.to.re "a") (str.to.re "s") (str.to.re "D") (str.to.re "A") (str.to.re "S")))) (str.to.re "\x0a"))))
; Days\s+HWAE\s+Host\x3APortawww\.thecommunicator\.net
(assert (str.in.re X (re.++ (str.to.re "Days") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HWAE") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Portawww.thecommunicator.net\x0a"))))
; ^(((ht|f)tp(s?))\://).*$
(assert (not (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a://") (re.union (str.to.re "ht") (str.to.re "f")) (str.to.re "tp") (re.opt (str.to.re "s"))))))
; /^\/cnt\.php\?id=\d+$/U
(assert (str.in.re X (re.++ (str.to.re "//cnt.php?id=") (re.+ (re.range "0" "9")) (str.to.re "/U\x0a"))))
; /bincode=Wz[0-9A-Za-z\x2b\x2f]{32}\x3d{0,2}$/Um
(assert (not (str.in.re X (re.++ (str.to.re "/bincode=Wz") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "+") (str.to.re "/"))) ((_ re.loop 0 2) (str.to.re "=")) (str.to.re "/Um\x0a")))))
(check-sat)
