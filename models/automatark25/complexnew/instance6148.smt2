(declare-const X String)
; /\u{0}\.\u{0}\.\u{0}[\u{2f}\u{5c}]/R
(assert (not (str.in_re X (re.++ (str.to_re "/\u{0}.\u{0}.\u{0}") (re.union (str.to_re "/") (str.to_re "\u{5c}")) (str.to_re "/R\u{a}")))))
; /((\d){2})?(\s|-)?((\d){2,4})?(\s|-){1}((\d){8})$/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt ((_ re.loop 2 4) (re.range "0" "9"))) ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "/\u{a}")))))
; serverUSER-AttachedReferer\u{3A}youPointsUser-Agent\u{3A}Host\u{3a}
(assert (not (str.in_re X (str.to_re "serverUSER-AttachedReferer:youPointsUser-Agent:Host:\u{a}"))))
(check-sat)
