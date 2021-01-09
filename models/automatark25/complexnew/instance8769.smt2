(declare-const X String)
; \x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (not (str.in.re X (str.to.re "(robert@blackcastlesoft.com)\x0a"))))
; ^(\()?(787|939)(\)|-)?([0-9]{3})(-)?([0-9]{4}|[0-9]{4})$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "(")) (re.union (str.to.re "787") (str.to.re "939")) (re.opt (re.union (str.to.re ")") (str.to.re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "-")) (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "\x0a")))))
; MailerHost\x3AUser-Agent\x3A
(assert (str.in.re X (str.to.re "MailerHost:User-Agent:\x0a")))
; HWAE\s+\x2Fta\x2FNEWS\x2FGuptacharloomcompany\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "HWAE") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/ta/NEWS/Guptacharloomcompany.com\x0a")))))
(check-sat)
