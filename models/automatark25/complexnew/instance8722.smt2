(declare-const X String)
; (SE-?)?[0-9]{12}
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "SE") (re.opt (str.to_re "-")))) ((_ re.loop 12 12) (re.range "0" "9")) (str.to_re "\u{a}"))))
; ^[ABCGHJMPQRTWXYZ]$
(assert (str.in_re X (re.++ (re.union (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "G") (str.to_re "H") (str.to_re "J") (str.to_re "M") (str.to_re "P") (str.to_re "Q") (str.to_re "R") (str.to_re "T") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z")) (str.to_re "\u{a}"))))
; www\u{2E}onetoolbar\u{2E}comcommunity
(assert (str.in_re X (str.to_re "www.onetoolbar.comcommunity\u{a}")))
; /filename=[^\n]*\u{2e}f4p/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".f4p/i\u{a}"))))
; /^\s*?MAIL\s+?FROM\u{3a}[^\r\n]*?\u{28}\u{29}\s\u{7b}/i
(assert (str.in_re X (re.++ (str.to_re "/") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "MAIL") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "FROM:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "()") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "{/i\u{a}"))))
(check-sat)
