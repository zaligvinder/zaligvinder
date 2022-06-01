(declare-const X String)
; (\d{5})[\.\-\+ ]?(\d{4})?
(assert (not (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.union (str.to_re ".") (str.to_re "-") (str.to_re "+") (str.to_re " "))) (re.opt ((_ re.loop 4 4) (re.range "0" "9"))) (str.to_re "\u{a}")))))
; SpywareStrike.*Subject\u{3A}\s+Pcast\u{2E}dat\u{2E}Toolbar
(assert (str.in_re X (re.++ (str.to_re "SpywareStrike") (re.* re.allchar) (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Pcast.dat.Toolbar\u{a}"))))
; ^[^']*$
(assert (not (str.in_re X (re.++ (re.* (re.comp (str.to_re "'"))) (str.to_re "\u{a}")))))
(check-sat)
