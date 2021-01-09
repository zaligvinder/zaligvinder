(declare-const X String)
; Host\x3a\dOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "OVNUsertooffers.bullseye-network.com\x0a")))))
; /^\/[a-z]{2,20}\.php\?[a-z]{2,10}\x3d[a-zA-Z0-9\x2f\x2b]+\x3d$/I
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 2 20) (re.range "a" "z")) (str.to.re ".php?") ((_ re.loop 2 10) (re.range "a" "z")) (str.to.re "=") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "/") (str.to.re "+"))) (str.to.re "=/I\x0a"))))
; (\w+([-+.']\w+)*@(gmail.com))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ (re.union (str.to.re "-") (str.to.re "+") (str.to.re ".") (str.to.re "'")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "@gmail") re.allchar (str.to.re "com")))))
; hostie\s+freeIPaddrsBardata\.warezclient\.comHost\x3AUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "hostie") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "freeIPaddrsBardata.warezclient.comHost:User-Agent:\x0a")))))
(check-sat)
