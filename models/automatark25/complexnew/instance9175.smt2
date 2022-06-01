(declare-const X String)
; /&key=[a-z0-9]{32}&dummy=\d{3,5}/Ui
(assert (str.in_re X (re.++ (str.to_re "/&key=") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "&dummy=") ((_ re.loop 3 5) (re.range "0" "9")) (str.to_re "/Ui\u{a}"))))
; TPSystemHost\u{3a}\u{7D}\u{7B}User\u{3A}Alert\u{2F}cgi-bin\u{2F}X-Mailer\u{3A}
(assert (not (str.in_re X (str.to_re "TPSystemHost:}{User:Alert/cgi-bin/X-Mailer:\u{13}\u{a}"))))
(check-sat)
