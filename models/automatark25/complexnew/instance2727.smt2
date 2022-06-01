(declare-const X String)
; iz=Referer\u{3A}offers\u{2E}bullseye-network\u{2E}com
(assert (not (str.in_re X (str.to_re "iz=Referer:offers.bullseye-network.com\u{a}"))))
; (^\d*\.\d{2}$)
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.* (re.range "0" "9")) (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")))))
; is\u{7D}\u{7B}Port\u{3A}\u{7D}\u{7B}User\u{3A}
(assert (str.in_re X (str.to_re "is}{Port:}{User:\u{a}")))
; e(vi?)?
(assert (not (str.in_re X (re.++ (str.to_re "e") (re.opt (re.++ (str.to_re "v") (re.opt (str.to_re "i")))) (str.to_re "\u{a}")))))
(check-sat)
