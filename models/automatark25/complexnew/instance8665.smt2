(declare-const X String)
; /outerhtml\s*?\+\=\s*?\u{22}/i
(assert (not (str.in_re X (re.++ (str.to_re "/outerhtml") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "+=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{22}/i\u{a}")))))
; (script)|(<)|(>)|(%3c)|(%3e)|(SELECT) |(UPDATE) |(INSERT) |(DELETE)|(GRANT) |(REVOKE)|(UNION)|(&lt;)|(&gt;)
(assert (str.in_re X (re.union (str.to_re "script") (str.to_re "<") (str.to_re ">") (str.to_re "%3c") (str.to_re "%3e") (str.to_re "SELECT ") (str.to_re "UPDATE ") (str.to_re "INSERT ") (str.to_re "DELETE") (str.to_re "GRANT ") (str.to_re "REVOKE") (str.to_re "UNION") (str.to_re "&lt;") (str.to_re "&gt;\u{a}"))))
; Xtrawww\u{2E}instafinder\u{2E}comsearchHost\u{3A}
(assert (not (str.in_re X (str.to_re "Xtrawww.instafinder.comsearchHost:\u{a}"))))
(check-sat)
