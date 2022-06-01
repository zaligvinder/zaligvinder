(declare-const X String)
; Host\u{3a}\dOVNUsertooffers\u{2E}bullseye-network\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "OVNUsertooffers.bullseye-network.com\u{a}")))))
; /^\/[a-z]{2,20}\.php\?[a-z]{2,10}\u{3d}[a-zA-Z0-9\u{2f}\u{2b}]+\u{3d}$/I
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 2 20) (re.range "a" "z")) (str.to_re ".php?") ((_ re.loop 2 10) (re.range "a" "z")) (str.to_re "=") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "/") (str.to_re "+"))) (str.to_re "=/I\u{a}"))))
; (\w+([-+.']\w+)*@(gmail.com))
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (re.union (str.to_re "-") (str.to_re "+") (str.to_re ".") (str.to_re "'")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "@gmail") re.allchar (str.to_re "com")))))
; hostie\s+freeIPaddrsBardata\.warezclient\.comHost\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "hostie") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "freeIPaddrsBardata.warezclient.comHost:User-Agent:\u{a}")))))
(check-sat)
