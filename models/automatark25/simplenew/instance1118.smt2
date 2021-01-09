(declare-const X String)
; Ready\sver\dcount\x2Eyok\x2Ecomweather
(assert (not (str.in.re X (re.++ (str.to.re "Ready") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "ver") (re.range "0" "9") (str.to.re "count.yok.comweather\x0a")))))
(check-sat)
