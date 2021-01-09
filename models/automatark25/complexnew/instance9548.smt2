(declare-const X String)
; Information\s+Host\x3A.*com
(assert (str.in.re X (re.++ (str.to.re "Information") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "com\x0a"))))
; /^Subject\x3A[^\r\n]*Trojaner-Info\sNewsletter/smi
(assert (not (str.in.re X (re.++ (str.to.re "/Subject:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "Trojaner-Info") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Newsletter/smi\x0a")))))
; twfofrfzlugq\x2feve\.qd\d+
(assert (str.in.re X (re.++ (str.to.re "twfofrfzlugq/eve.qd") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; HANDYHost\x3aHost\x3aHost\x3Ayddznydqir\x2feviGatornewsSoftActivity
(assert (not (str.in.re X (str.to.re "HANDYHost:Host:Host:yddznydqir/eviGatornewsSoftActivity\x13\x0a"))))
(check-sat)
