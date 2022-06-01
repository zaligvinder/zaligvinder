(declare-const X String)
; are\d+X-Mailer\u{3a}+Host\u{3A}\u{2E}aspx
(assert (not (str.in_re X (re.++ (str.to_re "are") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer") (re.+ (str.to_re ":")) (str.to_re "Host:.aspx\u{a}")))))
; Windows\u{2F}client\u{2F}Blackreportc\.goclick\.comX-Sender\u{3A}
(assert (str.in_re X (str.to_re "Windows/client/Blackreportc.goclick.comX-Sender:\u{13}\u{a}")))
(check-sat)
