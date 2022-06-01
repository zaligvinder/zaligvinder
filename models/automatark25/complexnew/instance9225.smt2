(declare-const X String)
; ^([A-Za-z]{5})([0-9]{4})([A-Za-z]{1})$
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "\u{a}"))))
; User-Agent\u{3A}upgrade\u{2E}qsrch\u{2E}info
(assert (str.in_re X (str.to_re "User-Agent:upgrade.qsrch.info\u{a}")))
; (([\w-]+://?|www[.])[^\s()<>]+)
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.++ (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ":/") (re.opt (str.to_re "/"))) (str.to_re "www.")) (re.+ (re.union (str.to_re "(") (str.to_re ")") (str.to_re "<") (str.to_re ">") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))))))
; NetControl\u{2E}ServerNetTrackerSiLENTHost\u{3A}
(assert (str.in_re X (str.to_re "NetControl.Server\u{13}NetTrackerSiLENTHost:\u{a}")))
(check-sat)
