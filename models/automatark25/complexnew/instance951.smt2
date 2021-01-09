(declare-const X String)
; SbAts[^\n\r]*Subject\x3a\d+dcww\x2Edmcast\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "SbAts") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Subject:") (re.+ (re.range "0" "9")) (str.to.re "dcww.dmcast.com\x0a"))))
; Host\x3A\.exePass-OnHost\x3A\.exe\x2Ftoolbar\x2F
(assert (str.in.re X (str.to.re "Host:.exePass-OnHost:.exe/toolbar/\x0a")))
; ^(\(\d{3}\)[- ]?|\d{3}[- ])?\d{3}[- ]\d{4}$
(assert (str.in.re X (re.++ (re.opt (re.union (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")") (re.opt (re.union (str.to.re "-") (str.to.re " ")))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " "))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^(([0-2]\d|[3][0-1])\/([0]\d|[1][0-2])\/[2][0]\d{2})$|^(([0-2]\d|[3][0-1])\/([0]\d|[1][0-2])\/[2][0]\d{2}\s([0-1]\d|[2][0-3])\:[0-5]\d\:[0-5]\d)$
(assert (str.in.re X (re.union (re.++ (re.union (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "/") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/20") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "\x0a") (re.union (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "/") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/20") ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9") (str.to.re ":") (re.range "0" "5") (re.range "0" "9")))))
(check-sat)
