(declare-const X String)
; www\u{2E}freescratchandwin\u{2E}com\w+Port.*User-Agent\u{3A}Toolbarkit
(assert (str.in_re X (re.++ (str.to_re "www.freescratchandwin.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Port") (re.* re.allchar) (str.to_re "User-Agent:Toolbarkit\u{a}"))))
; whenu\u{2E}com\d+Agent\stoWebupdate\.cgithisHost\u{3a}connection
(assert (str.in_re X (re.++ (str.to_re "whenu.com\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "Agent") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toWebupdate.cgithisHost:connection\u{a}"))))
; User-Agent\u{3A}\d+moreKontikiHost\u{3a}
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "moreKontikiHost:\u{a}"))))
(check-sat)
