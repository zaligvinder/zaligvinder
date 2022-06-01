(declare-const X String)
; mywayHost\u{3A}www\u{2E}eblocs\u{2E}com
(assert (not (str.in_re X (str.to_re "mywayHost:www.eblocs.com\u{1b}\u{a}"))))
; /^\/([a-zA-Z0-9-&+ ]+[^\/?]=){5}/Ui
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 5 5) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re "&") (str.to_re "+") (str.to_re " "))) (re.union (str.to_re "/") (str.to_re "?")) (str.to_re "="))) (str.to_re "/Ui\u{a}"))))
; /filename=[^\n]*\u{2e}wm/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wm/i\u{a}")))))
; TPSystemHost\u{3a}\u{7D}\u{7B}User\u{3A}Alert\u{2F}cgi-bin\u{2F}X-Mailer\u{3A}
(assert (not (str.in_re X (str.to_re "TPSystemHost:}{User:Alert/cgi-bin/X-Mailer:\u{13}\u{a}"))))
(check-sat)
