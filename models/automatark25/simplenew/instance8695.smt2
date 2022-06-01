(declare-const X String)
; info\s+wjpropqmlpohj\u{2f}lo\u{2F}toolbar\u{2F}supremetbhoroscope2Cookie\u{3a}
(assert (str.in_re X (re.++ (str.to_re "info") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "wjpropqmlpohj/lo/toolbar/supremetbhoroscope2Cookie:\u{a}"))))
(check-sat)
