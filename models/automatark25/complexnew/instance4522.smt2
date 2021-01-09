(declare-const X String)
; (.*)-----(BEGIN|END)([^-]*)-----(.*)
(assert (not (str.in.re X (re.++ (re.* re.allchar) (str.to.re "-----") (re.union (str.to.re "BEGIN") (str.to.re "END")) (re.* (re.comp (str.to.re "-"))) (str.to.re "-----") (re.* re.allchar) (str.to.re "\x0a")))))
; uuid=\s+User-Agent\x3a\d+\x5Chome\/lordofsearch
(assert (not (str.in.re X (re.++ (str.to.re "uuid=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "\x5chome/lordofsearch\x0a")))))
; ^\d{3}\s?\d{3}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
