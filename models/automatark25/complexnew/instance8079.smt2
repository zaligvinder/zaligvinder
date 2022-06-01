(declare-const X String)
; ^(([A-Z])([a-zA-Z0-9]+)?)(\:)(\d+)$
(assert (str.in_re X (re.++ (str.to_re ":") (re.+ (re.range "0" "9")) (str.to_re "\u{a}") (re.range "A" "Z") (re.opt (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))))))
; iepluginBrowsedOVNHost\u{3A}\u{2F}products\u{2F}spyblocs\u{2F}
(assert (not (str.in_re X (str.to_re "iepluginBrowsedOVNHost:/products/spyblocs/\u{13}\u{a}"))))
; (\/\/-->\s*)?<\/?SCRIPT([^>]*)>(\s*<!--\s)?
(assert (not (str.in_re X (re.++ (re.opt (re.++ (str.to_re "//-->") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (str.to_re "<") (re.opt (str.to_re "/")) (str.to_re "SCRIPT") (re.* (re.comp (str.to_re ">"))) (str.to_re ">") (re.opt (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "<!--") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (str.to_re "\u{a}")))))
(check-sat)
