(declare-const X String)
; (^10\.)|(^172\.1[6-9]\.)|(^172\.2[0-9]\.)|(^172\.3[0-1]\.)|(^192\.168\.)|(^127\.0\.0\.1)
(assert (not (str.in.re X (re.union (str.to.re "10.") (re.++ (str.to.re "172.1") (re.range "6" "9") (str.to.re ".")) (re.++ (str.to.re "172.2") (re.range "0" "9") (str.to.re ".")) (re.++ (str.to.re "172.3") (re.range "0" "1") (str.to.re ".")) (str.to.re "192.168.") (str.to.re "127.0.0.1\x0a")))))
; ^([A-Z]{2}[\s]|[A-Z]{2})[\w]{2}$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "A" "Z"))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
; v\x2E\s+ocllceclbhs\x2fgth\w+http\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (str.in.re X (re.++ (str.to.re "v.") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ocllceclbhs/gth") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "http://www.searchinweb.com/search.php?said=bar\x0a"))))
; /\/m1\.exe$/U
(assert (str.in.re X (str.to.re "//m1.exe/U\x0a")))
; ^[1-4]\d{3}\/((0?[1-6]\/((3[0-1])|([1-2][0-9])|(0?[1-9])))|((1[0-2]|(0?[7-9]))\/(30|([1-2][0-9])|(0?[1-9]))))$
(assert (str.in.re X (re.++ (re.range "1" "4") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "/") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "6") (str.to.re "/") (re.union (re.++ (str.to.re "3") (re.range "0" "1")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")))) (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (re.opt (str.to.re "0")) (re.range "7" "9"))) (str.to.re "/") (re.union (str.to.re "30") (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))))) (str.to.re "\x0a"))))
(check-sat)
