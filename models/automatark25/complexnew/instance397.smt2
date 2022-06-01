(declare-const X String)
; ChildWebGuardian\d+Subject\u{3A}
(assert (str.in_re X (re.++ (str.to_re "ChildWebGuardian") (re.+ (re.range "0" "9")) (str.to_re "Subject:\u{a}"))))
; ^([1-9]|1[0-2]):[0-5]\d ?(a|A|p|P)(m|M)$
(assert (str.in_re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9") (re.opt (str.to_re " ")) (re.union (str.to_re "a") (str.to_re "A") (str.to_re "p") (str.to_re "P")) (re.union (str.to_re "m") (str.to_re "M")) (str.to_re "\u{a}"))))
; SbAts\d+dcww\u{2E}dmcast\u{2E}comdistID=
(assert (str.in_re X (re.++ (str.to_re "SbAts") (re.+ (re.range "0" "9")) (str.to_re "dcww.dmcast.comdistID=\u{a}"))))
; (\n\r)   replacement string---->\n
(assert (not (str.in_re X (str.to_re "\u{a}\u{d}   replacement string---->\u{a}\u{a}"))))
(check-sat)
