(declare-const X String)
; show\u{2E}roogoo\u{2E}com\s+report\<\u{2F}title\>Host\u{3a}\.fcgi
(assert (not (str.in_re X (re.++ (str.to_re "show.roogoo.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "report</title>Host:.fcgi\u{a}")))))
; IP.*encoder\d+SAHPORT-User-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "IP") (re.* re.allchar) (str.to_re "encoder") (re.+ (re.range "0" "9")) (str.to_re "SAHPORT-User-Agent:\u{a}"))))
; PortweatherX-Mailer\u{3a}User-Agent\u{3A}Toolbar
(assert (str.in_re X (str.to_re "PortweatherX-Mailer:\u{13}User-Agent:Toolbar\u{a}")))
(check-sat)
