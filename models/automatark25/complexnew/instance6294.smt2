(declare-const X String)
; password\x3B1\x3BOptixOwner\x3ABarwww\x2Eaccoona\x2Ecom
(assert (str.in.re X (str.to.re "password;1;OptixOwner:Barwww.accoona.com\x0a")))
; Subject\x3ALOGX-Mailer\x3a
(assert (str.in.re X (str.to.re "Subject:LOGX-Mailer:\x13\x0a")))
; [1-2][0|9][0-9]{2}[0-1][0-9][0-3][0-9][-][0-9]{4}
(assert (not (str.in.re X (re.++ (re.range "1" "2") (re.union (str.to.re "0") (str.to.re "|") (str.to.re "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.range "0" "1") (re.range "0" "9") (re.range "0" "3") (re.range "0" "9") (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; (^(49030)[2-9](\d{10}$|\d{12,13}$))
(assert (str.in.re X (re.++ (str.to.re "\x0a49030") (re.range "2" "9") (re.union ((_ re.loop 10 10) (re.range "0" "9")) ((_ re.loop 12 13) (re.range "0" "9"))))))
; /filename=[^\n]*\x2exspf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xspf/i\x0a"))))
(check-sat)
