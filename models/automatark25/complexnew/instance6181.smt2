(declare-const X String)
; eveocczmthmmq\x2fomzl\d\x2Fasp\x2Foffers\.asp\?
(assert (str.in.re X (re.++ (str.to.re "eveocczmthmmq/omzl") (re.range "0" "9") (str.to.re "/asp/offers.asp?\x0a"))))
; /filename\=[a-z0-9]{24}\.jar/H
(assert (str.in.re X (re.++ (str.to.re "/filename=") ((_ re.loop 24 24) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".jar/H\x0a"))))
; whenu\x2Ecom\d+Agent\stoWebupdate\.cgithisHost\x3aconnection
(assert (not (str.in.re X (re.++ (str.to.re "whenu.com\x1b") (re.+ (re.range "0" "9")) (str.to.re "Agent") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toWebupdate.cgithisHost:connection\x0a")))))
; ^[0-9]{4} {0,1}[A-Z]{2}$
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "\x0a")))))
; ^(-?\$?([1-9]\d{0,2}(,\d{3})*|[1-9]\d*|0|)(.\d{1,2})?|\(\$?([1-9]\d{0,2}(,\d{3})*|[1-9]\d*|0|)(.\d{1,2})?\))$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "-")) (re.opt (str.to.re "$")) (re.union (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (str.to.re "0")) (re.opt (re.++ re.allchar ((_ re.loop 1 2) (re.range "0" "9"))))) (re.++ (str.to.re "(") (re.opt (str.to.re "$")) (re.union (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (str.to.re "0")) (re.opt (re.++ re.allchar ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re ")"))) (str.to.re "\x0a"))))
(check-sat)
