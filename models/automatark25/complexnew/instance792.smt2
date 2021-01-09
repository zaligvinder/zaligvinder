(declare-const X String)
; weather2ResultX-Sender\x3A
(assert (str.in.re X (str.to.re "weather2ResultX-Sender:\x13\x0a")))
; forum=related\x2Eyok\x2Ecom\sStarted\!$3
(assert (str.in.re X (re.++ (str.to.re "forum=related.yok.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Started!3\x0a"))))
; ^(GIR\\s{0,1}0AA|[A-PR-UWYZ]([0-9]{1,2}|([A-HK-Y][0-9]|[A-HK-Y][0-9]([0-9]|[ABEHMNPRV-Y]))|[0-9][A-HJKS-UW])\\s{0,1}[0-9][ABD-HJLNP-UW-Z]{2})$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "GIR\x5c") (re.opt (str.to.re "s")) (str.to.re "0AA")) (re.++ (re.union (re.range "A" "P") (re.range "R" "U") (str.to.re "W") (str.to.re "Y") (str.to.re "Z")) (re.union ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (re.union (re.range "A" "H") (re.range "K" "Y")) (re.range "0" "9") (re.union (re.range "0" "9") (str.to.re "A") (str.to.re "B") (str.to.re "E") (str.to.re "H") (str.to.re "M") (str.to.re "N") (str.to.re "P") (str.to.re "R") (re.range "V" "Y"))) (re.++ (re.range "0" "9") (re.union (re.range "A" "H") (str.to.re "J") (str.to.re "K") (re.range "S" "U") (str.to.re "W")))) (str.to.re "\x5c") (re.opt (str.to.re "s")) (re.range "0" "9") ((_ re.loop 2 2) (re.union (str.to.re "A") (str.to.re "B") (re.range "D" "H") (str.to.re "J") (str.to.re "L") (str.to.re "N") (re.range "P" "U") (re.range "W" "Z"))))) (str.to.re "\x0a"))))
(check-sat)
