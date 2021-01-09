(declare-const X String)
; From\x3A\w+SoftActivity\d+
(assert (str.in.re X (re.++ (str.to.re "From:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "SoftActivity\x13") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; Host\x3Ahirmvtg\x2fggqh\.kqhverA-Spy
(assert (str.in.re X (str.to.re "Host:hirmvtg/ggqh.kqh\x1bverA-Spy\x0a")))
; Supervisor\s+User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Supervisor") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a"))))
(check-sat)
