(declare-const X String)
; ^[\w\s]+$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; Host\u{3A}Wordmyway\.comhoroscope2Host
(assert (not (str.in_re X (str.to_re "Host:Wordmyway.comhoroscope2Host\u{a}"))))
; MyAgentprotocolprotocolHost\u{3A}\u{2F}s\u{28}robert\u{40}blackcastlesoft\u{2E}com\u{29}data2\.activshopper\.com
(assert (str.in_re X (str.to_re "MyAgentprotocolprotocolHost:/s(robert@blackcastlesoft.com)data2.activshopper.com\u{a}")))
; NetControl\u{2E}ServerNetTrackerSiLENTHost\u{3A}
(assert (str.in_re X (str.to_re "NetControl.Server\u{13}NetTrackerSiLENTHost:\u{a}")))
(check-sat)
