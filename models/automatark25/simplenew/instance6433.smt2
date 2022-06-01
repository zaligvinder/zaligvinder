(declare-const X String)
; \u{28}\u{29}url=http\u{3A}1\u{2E}0b3\u{2E}aspxWatchDogupwww\.klikvipsearch\.comNetspyt=WeHost\u{3A}\u{2F}cgi\u{2F}logurl\.cgi
(assert (str.in_re X (str.to_re "()url=http:\u{1b}1.0b3.aspxWatchDogupwww.klikvipsearch.comNetspyt=WeHost:/cgi/logurl.cgi\u{a}")))
(check-sat)
