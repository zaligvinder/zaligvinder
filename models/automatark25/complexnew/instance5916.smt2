(declare-const X String)
; /^\/[a-f0-9]{8}\/[a-f0-9]{8}\/$/iU
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "//iU\u{a}"))))
; this\s+MyBrowser\d+Redirector\u{22}ServerHost\u{3A}X-Mailer\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "this") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "MyBrowser") (re.+ (re.range "0" "9")) (str.to_re "Redirector\u{22}ServerHost:X-Mailer:\u{13}\u{a}")))))
; \u{28}\u{29}url=http\u{3A}1\u{2E}0b3\u{2E}aspxWatchDogupwww\.klikvipsearch\.comNetspyt=WeHost\u{3A}\u{2F}cgi\u{2F}logurl\.cgi
(assert (str.in_re X (str.to_re "()url=http:\u{1b}1.0b3.aspxWatchDogupwww.klikvipsearch.comNetspyt=WeHost:/cgi/logurl.cgi\u{a}")))
; /\u{2e}jar([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.jar") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; A-311[^\n\r]*Attached\sHost\u{3A}Wordmyway\.comhoroscope2
(assert (not (str.in_re X (re.++ (str.to_re "A-311") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Attached") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:Wordmyway.comhoroscope2\u{a}")))))
(check-sat)
