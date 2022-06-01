(declare-const X String)
; X-Mailer\u{3A}.*\u{2F}rss.*Desktopcargo=report\<\u{2F}title\>
(assert (str.in_re X (re.++ (str.to_re "X-Mailer:\u{13}") (re.* re.allchar) (str.to_re "/rss") (re.* re.allchar) (str.to_re "Desktopcargo=report</title>\u{a}"))))
; ^[A-Z]$
(assert (not (str.in_re X (re.++ (re.range "A" "Z") (str.to_re "\u{a}")))))
(check-sat)
