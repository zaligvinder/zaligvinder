(declare-const X String)
; jsp\d+Host\x3A\d+moreKontikiHost\x3aAcmeEvilFTP
(assert (str.in.re X (re.++ (str.to.re "jsp") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "moreKontikiHost:AcmeEvilFTP\x0a"))))
; \r\nSTATUS\x3A\dHost\x3aReferer\x3AServerSubject\x3a
(assert (str.in.re X (re.++ (str.to.re "\x0d\x0aSTATUS:") (re.range "0" "9") (str.to.re "Host:Referer:ServerSubject:\x0a"))))
; /^\/\?[a-f0-9]{32}$/U
(assert (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
(check-sat)
