(declare-const X String)
; ^[^';<>?%!\s]{1,20}$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 20) (re.union (str.to_re "'") (str.to_re ";") (str.to_re "<") (str.to_re ">") (str.to_re "?") (str.to_re "%") (str.to_re "!") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
(check-sat)
