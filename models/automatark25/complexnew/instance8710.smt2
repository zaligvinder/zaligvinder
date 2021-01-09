(declare-const X String)
; Subject\x3aSpywareSpyBuddy
(assert (not (str.in.re X (str.to.re "Subject:SpywareSpyBuddy\x0a"))))
; (^\d{1,2}\.\d{1,2}\.\d{4})|(^\d{1,2}\.\d{1,2})|(^\d{1,2})$
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "\x0a"))))))
; ^[0-9]+[NnSs] [0-9]+[WwEe]$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.union (str.to.re "N") (str.to.re "n") (str.to.re "S") (str.to.re "s")) (str.to.re " ") (re.+ (re.range "0" "9")) (re.union (str.to.re "W") (str.to.re "w") (str.to.re "E") (str.to.re "e")) (str.to.re "\x0a"))))
(check-sat)
