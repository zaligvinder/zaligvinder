(declare-const X String)
; ^\d?\d'(\d|1[01])?.?(\d|1[01])"$
(assert (not (str.in.re X (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9") (str.to.re "'") (re.opt (re.union (re.range "0" "9") (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1"))))) (re.opt re.allchar) (re.union (re.range "0" "9") (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "\x22\x0a")))))
; LOG\s+spyblpatHost\x3Ais\x2Ephp
(assert (not (str.in.re X (re.++ (str.to.re "LOG") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblpatHost:is.php\x0a")))))
(check-sat)
