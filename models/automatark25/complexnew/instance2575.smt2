(declare-const X String)
; OVN\s+\x2APORT3\x2A\[DRIVEwww\.raxsearch\.com
(assert (not (str.in.re X (re.++ (str.to.re "OVN") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "*PORT3*[DRIVEwww.raxsearch.com\x0a")))))
; ^[a-z0-9!$'*+\-_]+(\.[a-z0-9!$'*+\-_]+)*@([a-z0-9]+(-+[a-z0-9]+)*\.)+([a-z]{2}|aero|arpa|biz|cat|com|coop|edu|gov|info|int|jobs|mil|mobi|museum|name|net|org|pro|travel)$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "!") (str.to.re "$") (str.to.re "'") (str.to.re "*") (str.to.re "+") (str.to.re "-") (str.to.re "_"))) (re.* (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "!") (str.to.re "$") (str.to.re "'") (str.to.re "*") (str.to.re "+") (str.to.re "-") (str.to.re "_"))))) (str.to.re "@") (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.* (re.++ (re.+ (str.to.re "-")) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))) (str.to.re "."))) (re.union ((_ re.loop 2 2) (re.range "a" "z")) (str.to.re "aero") (str.to.re "arpa") (str.to.re "biz") (str.to.re "cat") (str.to.re "com") (str.to.re "coop") (str.to.re "edu") (str.to.re "gov") (str.to.re "info") (str.to.re "int") (str.to.re "jobs") (str.to.re "mil") (str.to.re "mobi") (str.to.re "museum") (str.to.re "name") (str.to.re "net") (str.to.re "org") (str.to.re "pro") (str.to.re "travel")) (str.to.re "\x0a"))))
; /^\/lists\/\d{20}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//lists/") ((_ re.loop 20 20) (re.range "0" "9")) (str.to.re "/U\x0a")))))
; Host\x3A\.exePass-OnHost\x3A\.exe\x2Ftoolbar\x2F
(assert (str.in.re X (str.to.re "Host:.exePass-OnHost:.exe/toolbar/\x0a")))
; ^[SFTG]\d{7}[A-Z]$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "S") (str.to.re "F") (str.to.re "T") (str.to.re "G")) ((_ re.loop 7 7) (re.range "0" "9")) (re.range "A" "Z") (str.to.re "\x0a")))))
(check-sat)
