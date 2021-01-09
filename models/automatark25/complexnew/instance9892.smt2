(declare-const X String)
; TROJAN-Owner\x3AUser-Agent\x3a%3fTs2\x2F
(assert (str.in.re X (str.to.re "TROJAN-Owner:User-Agent:%3fTs2/\x0a")))
; ^[\d]{5}[-\s]{1}[\d]{3}[-\s]{1}[\d]{3}$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\/app\/\?prj=\d\x26pid=[^\r\n]+\x26mac=/Ui
(assert (str.in.re X (re.++ (str.to.re "//app/?prj=") (re.range "0" "9") (str.to.re "&pid=") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "&mac=/Ui\x0a"))))
; ^\w+.*$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* re.allchar) (str.to.re "\x0a"))))
(check-sat)
