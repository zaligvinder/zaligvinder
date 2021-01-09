(declare-const X String)
; /\x2ermp([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.rmp") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; (^(5[0678])\d{11,18}$)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 11 18) (re.range "0" "9")) (str.to.re "5") (re.union (str.to.re "0") (str.to.re "6") (str.to.re "7") (str.to.re "8"))))))
; %3fSupremeSoftwareoffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in.re X (str.to.re "%3fSupremeSoftwareoffers.bullseye-network.com\x0a"))))
; ^[a-z0-9!$'*+\-_]+(\.[a-z0-9!$'*+\-_]+)*@([a-z0-9]+(-+[a-z0-9]+)*\.)+([a-z]{2}|aero|arpa|biz|cat|com|coop|edu|gov|info|int|jobs|mil|mobi|museum|name|net|org|pro|travel)$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "!") (str.to.re "$") (str.to.re "'") (str.to.re "*") (str.to.re "+") (str.to.re "-") (str.to.re "_"))) (re.* (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "!") (str.to.re "$") (str.to.re "'") (str.to.re "*") (str.to.re "+") (str.to.re "-") (str.to.re "_"))))) (str.to.re "@") (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.* (re.++ (re.+ (str.to.re "-")) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))) (str.to.re "."))) (re.union ((_ re.loop 2 2) (re.range "a" "z")) (str.to.re "aero") (str.to.re "arpa") (str.to.re "biz") (str.to.re "cat") (str.to.re "com") (str.to.re "coop") (str.to.re "edu") (str.to.re "gov") (str.to.re "info") (str.to.re "int") (str.to.re "jobs") (str.to.re "mil") (str.to.re "mobi") (str.to.re "museum") (str.to.re "name") (str.to.re "net") (str.to.re "org") (str.to.re "pro") (str.to.re "travel")) (str.to.re "\x0a"))))
(check-sat)
