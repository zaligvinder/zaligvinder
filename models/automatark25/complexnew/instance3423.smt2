(declare-const X String)
; from\x3AUser-Agent\x3AChildWebGuardian
(assert (not (str.in.re X (str.to.re "from:User-Agent:ChildWebGuardian\x0a"))))
; [a-zA-Z0-9_\\-]+@([a-zA-Z0-9_\\-]+\\.)+(com)
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "\x5c") (str.to.re "-"))) (str.to.re "@") (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "\x5c") (str.to.re "-"))) (str.to.re "\x5c") re.allchar)) (str.to.re "com\x0a")))))
; ChildWebGuardian\d+Subject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "ChildWebGuardian") (re.+ (re.range "0" "9")) (str.to.re "Subject:\x0a")))))
; A-311[^\n\r]*Attached\sHost\x3AWordmyway\.comhoroscope2
(assert (not (str.in.re X (re.++ (str.to.re "A-311") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Attached") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:Wordmyway.comhoroscope2\x0a")))))
(check-sat)
