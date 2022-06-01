(declare-const X String)
; XP\d+Acme\s+\u{2F}cbn\u{2F}node=Host\u{3A}\u{3F}search\u{3D}versionContact
(assert (str.in_re X (re.++ (str.to_re "XP") (re.+ (re.range "0" "9")) (str.to_re "Acme") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cbn/node=Host:?search=versionContact\u{a}"))))
; ^p(ost)?[ |\.]*o(ffice)?[ |\.]*(box)?[ 0-9]*[^[a-z ]]*
(assert (str.in_re X (re.++ (str.to_re "p") (re.opt (str.to_re "ost")) (re.* (re.union (str.to_re " ") (str.to_re "|") (str.to_re "."))) (str.to_re "o") (re.opt (str.to_re "ffice")) (re.* (re.union (str.to_re " ") (str.to_re "|") (str.to_re "."))) (re.opt (str.to_re "box")) (re.* (re.union (str.to_re " ") (re.range "0" "9"))) (re.union (str.to_re "[") (re.range "a" "z") (str.to_re " ")) (re.* (str.to_re "]")) (str.to_re "\u{a}"))))
(check-sat)
