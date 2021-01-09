(declare-const X String)
; iz=Referer\x3Aoffers\x2Ebullseye-network\x2Ecom
(assert (str.in.re X (str.to.re "iz=Referer:offers.bullseye-network.com\x0a")))
; ((([7-9])(\d{3})([-])(\d{4}))|(([7-9])(\d{7})))
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.range "7" "9") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.range "7" "9") ((_ re.loop 7 7) (re.range "0" "9")))) (str.to.re "\x0a")))))
; ^(b|B)(f|F)(p|P)(o|O)(\s*||\s*C(/|)O\s*)[0-9]{1,4}
(assert (str.in.re X (re.++ (re.union (str.to.re "b") (str.to.re "B")) (re.union (str.to.re "f") (str.to.re "F")) (re.union (str.to.re "p") (str.to.re "P")) (re.union (str.to.re "o") (str.to.re "O")) (re.union (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "C/O") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) ((_ re.loop 1 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
