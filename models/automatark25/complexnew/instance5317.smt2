(declare-const X String)
; whenu\u{2E}com\d+Agent\stoWebupdate\.cgithisHost\u{3a}connection
(assert (str.in_re X (re.++ (str.to_re "whenu.com\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "Agent") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toWebupdate.cgithisHost:connection\u{a}"))))
; Subject\u{3A}linkautomatici\u{2E}comReferer\u{3A}www\u{2E}searchreslt\u{2E}com
(assert (str.in_re X (str.to_re "Subject:linkautomatici.comReferer:www.searchreslt.com\u{a}")))
(check-sat)
