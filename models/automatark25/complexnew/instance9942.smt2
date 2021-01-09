(declare-const X String)
; /z\x3D[A-Z0-9%]{700}/i
(assert (not (str.in.re X (re.++ (str.to.re "/z=") ((_ re.loop 700 700) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "%"))) (str.to.re "/i\x0a")))))
; ^[a-z\.]*\s?([a-z\-\']+\s)+[a-z\-\']+$
(assert (not (str.in.re X (re.++ (re.* (re.union (re.range "a" "z") (str.to.re "."))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "'"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (re.+ (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "'"))) (str.to.re "\x0a")))))
; /5FDC81917DE08A41A6AC(E9B8ECA1EE.8|.98ECB1EEA8E)/smi
(assert (not (str.in.re X (re.++ (str.to.re "/5FDC81917DE08A41A6AC") (re.union (re.++ (str.to.re "E9B8ECA1EE") re.allchar (str.to.re "8")) (re.++ re.allchar (str.to.re "98ECB1EEA8E"))) (str.to.re "/smi\x0a")))))
; Test\d+TencentTravelerWebConnLibHost\x3Awww\x2Ee-finder\x2Ecc
(assert (str.in.re X (re.++ (str.to.re "Test") (re.+ (re.range "0" "9")) (str.to.re "TencentTravelerWebConnLibHost:www.e-finder.cc\x0a"))))
; (Word1|Word2).*?(10|[1-9])
(assert (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "10") (re.range "1" "9")) (str.to.re "\x0aWord") (re.union (str.to.re "1") (str.to.re "2")))))
(check-sat)
