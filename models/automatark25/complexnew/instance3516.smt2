(declare-const X String)
; ^[\d]{5}[-\s]{1}[\d]{2}[-\s]{1}[\d]{2}[-\s]{1}[\d]{2}$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^((4(\d{12}|\d{15}))|(5\d{15})|(6011\d{12})|(3(4|7)\d{13}))$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "4") (re.union ((_ re.loop 12 12) (re.range "0" "9")) ((_ re.loop 15 15) (re.range "0" "9")))) (re.++ (str.to.re "5") ((_ re.loop 15 15) (re.range "0" "9"))) (re.++ (str.to.re "6011") ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ (str.to.re "3") (re.union (str.to.re "4") (str.to.re "7")) ((_ re.loop 13 13) (re.range "0" "9")))) (str.to.re "\x0a"))))
; User-Agent\x3A\s+Host\x3A[^\n\r]*Hourspjpoptwql\x2frlnjFrom\x3Asbver\x3aGhost
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Hourspjpoptwql/rlnjFrom:sbver:Ghost\x13\x0a"))))
(check-sat)
