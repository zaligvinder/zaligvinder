(declare-const X String)
; ^[1-9]0?$
(assert (str.in_re X (re.++ (re.range "1" "9") (re.opt (str.to_re "0")) (str.to_re "\u{a}"))))
; \u{28}\u{29}url=http\u{3A}1\u{2E}0b3\u{2E}aspxWatchDogupwww\.klikvipsearch\.comNetspyt=WeHost\u{3A}\u{2F}cgi\u{2F}logurl\.cgi
(assert (str.in_re X (str.to_re "()url=http:\u{1b}1.0b3.aspxWatchDogupwww.klikvipsearch.comNetspyt=WeHost:/cgi/logurl.cgi\u{a}")))
; Shell\u{2F}Fileage\u{7D}\u{7B}Port\u{3A}upd\u{2E}lop\u{2E}com
(assert (not (str.in_re X (str.to_re "Shell/Fileage}{Port:upd.lop.com\u{a}"))))
; dl\u{2E}web-nexus\u{2E}net\d+www\u{2E}onlinecasinoextra\u{2E}comsqlads\.grokads\.com
(assert (str.in_re X (re.++ (str.to_re "dl.web-nexus.net") (re.+ (re.range "0" "9")) (str.to_re "www.onlinecasinoextra.comsqlads.grokads.com\u{a}"))))
; /^\u{2f}[a-f0-9]{135}/Um
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 135 135) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/Um\u{a}"))))
(check-sat)
