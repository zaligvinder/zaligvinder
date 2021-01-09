(declare-const X String)
; ^([A-HK-PRSVWY][A-HJ-PR-Y])\s?([0][2-9]|[1-9][0-9])\s?[A-HJ-PR-Z]{3}$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.++ (str.to.re "0") (re.range "2" "9")) (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.union (re.range "A" "H") (re.range "J" "P") (re.range "R" "Z"))) (str.to.re "\x0a") (re.union (re.range "A" "H") (re.range "K" "P") (str.to.re "R") (str.to.re "S") (str.to.re "V") (str.to.re "W") (str.to.re "Y")) (re.union (re.range "A" "H") (re.range "J" "P") (re.range "R" "Y")))))
; thesearchresltLoggerHost\x3ABetaHWAEHost\x3Ais
(assert (str.in.re X (str.to.re "thesearchresltLoggerHost:BetaHWAEHost:is\x0a")))
(check-sat)
