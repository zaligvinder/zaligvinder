(declare-const X String)
; \u{28}robert\u{40}blackcastlesoft\u{2E}com\u{29}
(assert (not (str.in_re X (str.to_re "(robert@blackcastlesoft.com)\u{a}"))))
; ^(\()?(787|939)(\)|-)?([0-9]{3})(-)?([0-9]{4}|[0-9]{4})$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "(")) (re.union (str.to_re "787") (str.to_re "939")) (re.opt (re.union (str.to_re ")") (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re "-")) (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to_re "\u{a}")))))
; MailerHost\u{3A}User-Agent\u{3A}
(assert (str.in_re X (str.to_re "MailerHost:User-Agent:\u{a}")))
; HWAE\s+\u{2F}ta\u{2F}NEWS\u{2F}Guptacharloomcompany\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "HWAE") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/ta/NEWS/Guptacharloomcompany.com\u{a}")))))
(check-sat)
