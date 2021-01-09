(declare-const X String)
; ^((([sS][r-tR-Tx-zX-Z])\s*([sx-zSX-Z])?\s*([a-zA-Z]{2,3}))?\s*(\d\d)\s*-?\s*(\d{6,7}))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.union (str.to.re "s") (re.range "x" "z") (str.to.re "S") (re.range "X" "Z"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.union (str.to.re "s") (str.to.re "S")) (re.union (re.range "r" "t") (re.range "R" "T") (re.range "x" "z") (re.range "X" "Z")))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 6 7) (re.range "0" "9")) (re.range "0" "9") (re.range "0" "9")))))
; /filename=[^\n]*\x2equo/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".quo/i\x0a"))))
; sidesearch\.dropspam\.com\s+Strip-Player\s+
(assert (str.in.re X (re.++ (str.to.re "sidesearch.dropspam.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Strip-Player\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; configINTERNAL\.ini.*SecureNet\s+User-Agent\x3Aregister\.asp
(assert (str.in.re X (re.++ (str.to.re "configINTERNAL.ini") (re.* re.allchar) (str.to.re "SecureNet") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:register.asp\x0a"))))
(check-sat)
