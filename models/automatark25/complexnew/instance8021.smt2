(declare-const X String)
; ^[A-Za-z]{2}[0-9]{6}[A-Za-z]{1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a")))))
; ^[a-zA-Z0-9!@#$&_]+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "!") (str.to.re "@") (str.to.re "#") (str.to.re "$") (str.to.re "&") (str.to.re "_"))) (str.to.re "\x0a")))))
; sponsor2\.ucmore\.comUser-Agent\x3AUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "sponsor2.ucmore.comUser-Agent:User-Agent:\x0a"))))
; ^[0-9]{8}R[A-HJ-NP-TV-Z]$
(assert (not (str.in.re X (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "R") (re.union (re.range "A" "H") (re.range "J" "N") (re.range "P" "T") (re.range "V" "Z")) (str.to.re "\x0a")))))
; Referer\x3ATencentTraveler
(assert (not (str.in.re X (str.to.re "Referer:TencentTraveler\x0a"))))
(check-sat)
