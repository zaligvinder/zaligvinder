(declare-const X String)
; HWPE[^\n\r]*Basic.*LOGsearches\x2Eworldtostart\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "HWPE") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Basic") (re.* re.allchar) (str.to.re "LOGsearches.worldtostart.com\x0a")))))
; Host\x3Ahirmvtg\x2fggqh\.kqhverA-Spy
(assert (str.in.re X (str.to.re "Host:hirmvtg/ggqh.kqh\x1bverA-Spy\x0a")))
; /^(\d+\*)+(\d)+$/gm
(assert (str.in.re X (re.++ (str.to.re "/") (re.+ (re.++ (re.+ (re.range "0" "9")) (str.to.re "*"))) (re.+ (re.range "0" "9")) (str.to.re "/gm\x0a"))))
; Hello\x2E\s+ovplrichfind\x2EcomCookie\x3a
(assert (str.in.re X (re.++ (str.to.re "Hello.") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ovplrichfind.comCookie:\x0a"))))
; ^([0-9a-zA-Z]+[-._+&])*[0-9a-zA-Z_-]+@([-0-9a-zA-Z]+[.])+[a-zA-Z]{2,6}$
(assert (not (str.in.re X (re.++ (re.* (re.++ (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (re.union (str.to.re "-") (str.to.re ".") (str.to.re "_") (str.to.re "+") (str.to.re "&")))) (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "-"))) (str.to.re "@") (re.+ (re.++ (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "."))) ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
(check-sat)
