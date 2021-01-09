(declare-const X String)
; replace(MobileNo,' ',''),'^(\+44|0044|0)(7)[4-9][0-9]{8}$'
(assert (str.in.re X (re.++ (str.to.re "replaceMobileNo,' ','','") (re.union (str.to.re "+44") (str.to.re "0044") (str.to.re "0")) (str.to.re "7") (re.range "4" "9") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "'\x0a"))))
; (\b\w+\b)       # Match a word and capture it
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "       # Match a word and capture it\x0a")))))
; clvompycem\x2fcen\.vcnHost\x3AUser-Agent\x3A\x0d\x0a
(assert (not (str.in.re X (str.to.re "clvompycem/cen.vcnHost:User-Agent:\x0d\x0a\x0a"))))
(check-sat)
