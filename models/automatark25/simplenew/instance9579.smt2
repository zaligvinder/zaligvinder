(declare-const X String)
; /SOAPAction\x3A\s*?\x22[^\x22\x23]+?\x23([^\x22]{2048}|[^\x22]+$)/Hsi
(assert (str.in.re X (re.++ (str.to.re "/SOAPAction:") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22") (re.+ (re.union (str.to.re "\x22") (str.to.re "#"))) (str.to.re "#") (re.union ((_ re.loop 2048 2048) (re.comp (str.to.re "\x22"))) (re.+ (re.comp (str.to.re "\x22")))) (str.to.re "/Hsi\x0a"))))
(check-sat)
