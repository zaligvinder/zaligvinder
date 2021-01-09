(declare-const X String)
; ((0|1[0-9]{0,2}|2[0-9]?|2[0-4][0-9]|25[0-5]|[3-9][0-9]?)\.){3}(0|1[0-9]{0,2}|2[0-9]?|2[0-4][0-9]|25[0-5]|[3-9][0-9]?)
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.++ (re.union (str.to.re "0") (re.++ (str.to.re "1") ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (str.to.re "2") (re.opt (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5")) (re.++ (re.range "3" "9") (re.opt (re.range "0" "9")))) (str.to.re "."))) (re.union (str.to.re "0") (re.++ (str.to.re "1") ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (str.to.re "2") (re.opt (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5")) (re.++ (re.range "3" "9") (re.opt (re.range "0" "9")))) (str.to.re "\x0a"))))
; www\x2Eweepee\x2Ecom\w+Owner\x3Aiswww\x2Eemp3finder\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "www.weepee.com\x1b") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:iswww.emp3finder.com\x0a")))))
; /\/3\/[A-Z]{2}\/[a-f0-9]{32}\/\d+\.\d+\.\d+\.\d+\//
(assert (not (str.in.re X (re.++ (str.to.re "//3/") ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re "//\x0a")))))
; /\x2emsi([\?\x5c\x2f]|$)/miU
(assert (not (str.in.re X (re.++ (str.to.re "/.msi") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/miU\x0a")))))
(check-sat)
