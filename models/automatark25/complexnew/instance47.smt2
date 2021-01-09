(declare-const X String)
; to\s+Host\x3AWeHost\x3a
(assert (str.in.re X (re.++ (str.to.re "to") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:WeHost:\x0a"))))
; /filename=[^\n]*\x2em3u/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m3u/i\x0a")))))
; www\x2Esnap\x2Ecom\w+FTX-Mailer\x3AfromReferer\x3Asearch\x2econduit\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "www.snap.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "FTX-Mailer:\x13fromReferer:search.conduit.com\x0a")))))
; -[0-9]*[x][0-9]*
(assert (not (str.in.re X (re.++ (str.to.re "-") (re.* (re.range "0" "9")) (str.to.re "x") (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; ^(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[0-9]{1,2})(\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[0-9]{1,2})){3}$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "25") (re.range "0" "5")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9") (re.range "0" "9")) ((_ re.loop 1 2) (re.range "0" "9"))) ((_ re.loop 3 3) (re.++ (str.to.re ".") (re.union (re.++ (str.to.re "25") (re.range "0" "5")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9") (re.range "0" "9")) ((_ re.loop 1 2) (re.range "0" "9"))))) (str.to.re "\x0a")))))
(check-sat)
