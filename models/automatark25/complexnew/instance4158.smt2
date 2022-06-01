(declare-const X String)
; jsp\d+Host\u{3A}\d+moreKontikiHost\u{3a}AcmeEvilFTP
(assert (str.in_re X (re.++ (str.to_re "jsp") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "moreKontikiHost:AcmeEvilFTP\u{a}"))))
; \r\nSTATUS\u{3A}\dHost\u{3a}Referer\u{3A}ServerSubject\u{3a}
(assert (str.in_re X (re.++ (str.to_re "\u{d}\u{a}STATUS:") (re.range "0" "9") (str.to_re "Host:Referer:ServerSubject:\u{a}"))))
; /^\/\?[a-f0-9]{32}$/U
(assert (str.in_re X (re.++ (str.to_re "//?") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/U\u{a}"))))
(check-sat)
