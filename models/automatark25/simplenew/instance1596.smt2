(declare-const X String)
; \u{2E}txt\stoolbar\.anwb\.nlHost\u{3A}iOpusA-311Servert=form-data\u{3B}\u{20}name=\u{22}pid\u{22}
(assert (str.in_re X (re.++ (str.to_re ".txt") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toolbar.anwb.nlHost:iOpusA-311Servert=form-data; name=\u{22}pid\u{22}\u{a}"))))
(check-sat)
