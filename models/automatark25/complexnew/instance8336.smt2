(declare-const X String)
; ^[\w_.]{5,12}$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 12) (re.union (str.to.re "_") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; cojud\x2Edmcast\x2Ecom\sApofis\w+Referer\x3Awww\x2Emirarsearch\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "cojud.dmcast.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Apofis") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Referer:www.mirarsearch.com\x0a")))))
; (GB-?)?([1-9][0-9]{2}\ ?[0-9]{4}\ ?[0-9]{2})|([1-9][0-9]{2}\ ?[0-9]{4}\ ?[0-9]{2}\ ?[0-9]{3})|((GD|HA)[0-9]{3})
(assert (str.in.re X (re.union (re.++ (re.opt (re.++ (str.to.re "GB") (re.opt (str.to.re "-")))) (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to.re "\x0a") (re.union (str.to.re "GD") (str.to.re "HA")) ((_ re.loop 3 3) (re.range "0" "9"))))))
(check-sat)
