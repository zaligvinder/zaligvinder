(declare-const X String)
; filename=\x22\s+www\x2Epeer2mail\x2Ecomgot
(assert (str.in.re X (re.++ (str.to.re "filename=\x22") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.peer2mail.comgot\x0a"))))
; \x2Fbar_pl\x2Fshdoclc\.fcgisource%3Dultrasearch136%26campaign%3DsnapEIHBand,
(assert (str.in.re X (str.to.re "/bar_pl/shdoclc.fcgisource%3Dultrasearch136%26campaign%3DsnapEIHBand,\x0a")))
; ^\d{3}-\d{7}[0-6]{1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "6")) (str.to.re "\x0a")))))
(check-sat)
