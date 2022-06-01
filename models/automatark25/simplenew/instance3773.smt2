(declare-const X String)
; st=\s+www\.iggsey\.comcs\u{2E}smartshopper\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "st=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.iggsey.comcs.smartshopper.com\u{a}"))))
(check-sat)
