(declare-const X String)
; ^[0-9]{8}$
(assert (not (str.in.re X (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; IP.*encoder\d+SAHPORT-User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "IP") (re.* re.allchar) (str.to.re "encoder") (re.+ (re.range "0" "9")) (str.to.re "SAHPORT-User-Agent:\x0a")))))
; ^[B|K|T|P][A-Z][0-9]{4}$
(assert (str.in.re X (re.++ (re.union (str.to.re "B") (str.to.re "|") (str.to.re "K") (str.to.re "T") (str.to.re "P")) (re.range "A" "Z") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
