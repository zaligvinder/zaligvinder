(declare-const X String)
; /bbdd(host|user|passwd)=\u{22}[^\s]*?([\u{60}\u{3b}\u{7c}]|\u{24}\u{28})/i
(assert (not (str.in_re X (re.++ (str.to_re "/bbdd") (re.union (str.to_re "host") (str.to_re "user") (str.to_re "passwd")) (str.to_re "=\u{22}") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "$(") (str.to_re "`") (str.to_re ";") (str.to_re "|")) (str.to_re "/i\u{a}")))))
(check-sat)
