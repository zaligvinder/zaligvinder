(declare-const X String)
; /ID3\x03\x00.{5}([TW][A-Z]{3}|COMM)/smi
(assert (str.in.re X (re.++ (str.to.re "/ID3\x03\x00") ((_ re.loop 5 5) re.allchar) (re.union (re.++ (re.union (str.to.re "T") (str.to.re "W")) ((_ re.loop 3 3) (re.range "A" "Z"))) (str.to.re "COMM")) (str.to.re "/smi\x0a"))))
; ^([1-9]+)?[13579]$
(assert (str.in.re X (re.++ (re.opt (re.+ (re.range "1" "9"))) (re.union (str.to.re "1") (str.to.re "3") (str.to.re "5") (str.to.re "7") (str.to.re "9")) (str.to.re "\x0a"))))
; ((\bm_[a-zA-Z\d]*\b)|(\bin_[a-zA-Z\d]*\b)|(\bin _[a-zA-Z\d]*\b))
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "m_") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.++ (str.to.re "in_") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.++ (str.to.re "in _") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to.re "\x0a")))))
; [0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}
(assert (not (str.in.re X (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; software.*com\x2Findex\.php\?tpid=\s+Host\x3A\x2Ftoolbar\x2Fsupremetb
(assert (not (str.in.re X (re.++ (str.to.re "software") (re.* re.allchar) (str.to.re "com/index.php?tpid=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:/toolbar/supremetb\x0a")))))
(check-sat)
