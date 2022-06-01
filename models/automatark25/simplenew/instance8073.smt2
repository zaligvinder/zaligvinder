(declare-const X String)
; Host\u{3A}\s+CD\u{2F}\s+twfofrfzlugq\u{2f}eve\.qdSeconds\-\u{2F}toolbar\u{2F}supremetb
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "CD/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "twfofrfzlugq/eve.qdSeconds-/toolbar/supremetb\u{a}"))))
(check-sat)
