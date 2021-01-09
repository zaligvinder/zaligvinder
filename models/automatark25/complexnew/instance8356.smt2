(declare-const X String)
; sidesearch\.dropspam\.com\s+Strip-Player\s+
(assert (not (str.in.re X (re.++ (str.to.re "sidesearch.dropspam.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Strip-Player\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; ^(\S+\.{1})(\S+\.{1})*([^\s\.]+\s*)$
(assert (not (str.in.re X (re.++ (re.* (re.++ (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) ((_ re.loop 1 1) (str.to.re ".")))) (str.to.re "\x0a") (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) ((_ re.loop 1 1) (str.to.re ".")) (re.+ (re.union (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))))
; The company delivers cakes and also online send mothers  day flowers to Delhi.
(assert (not (str.in.re X (re.++ (str.to.re "The company delivers cakes and also online send mothers  day flowers to Delhi") re.allchar (str.to.re "\x0a")))))
; ((19|20)[\d]{2}/[\d]{6}/[\d]{2})
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (str.to.re "19") (str.to.re "20")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 2 2) (re.range "0" "9")))))
(check-sat)
