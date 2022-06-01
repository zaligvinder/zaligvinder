(declare-const X String)
; name\u{3d}Emailbadurl\u{2E}grandstreetinteractive\u{2E}comHost\u{3A}stepwww\u{2E}kornputers\u{2E}com
(assert (not (str.in_re X (str.to_re "name=Emailbadurl.grandstreetinteractive.comHost:stepwww.kornputers.com\u{a}"))))
; /\r\n\r\nsession\u{3a}\d{1,7}$/
(assert (str.in_re X (re.++ (str.to_re "/\u{d}\u{a}\u{d}\u{a}session:") ((_ re.loop 1 7) (re.range "0" "9")) (str.to_re "/\u{a}"))))
; Host\u{3A}Host\u{3A}X-Mailer\u{3a}
(assert (str.in_re X (str.to_re "Host:Host:X-Mailer:\u{13}\u{a}")))
(check-sat)
