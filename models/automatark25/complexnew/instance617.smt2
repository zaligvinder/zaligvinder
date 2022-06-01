(declare-const X String)
; ^(\([2-9]|[2-9])(\d{2}|\d{2}\))(-|.|\s)?\d{3}(-|.|\s)?\d{4}$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "(") (re.range "2" "9")) (re.range "2" "9")) (re.union ((_ re.loop 2 2) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ")"))) (re.opt (re.union (str.to_re "-") re.allchar (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") re.allchar (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; \u{5D}\u{25}20\u{5B}Port_X-Mailer\u{3A}X-Mailer\u{3a}www\.actualnames\.comwebsearch\.getmirar\.com
(assert (str.in_re X (str.to_re "]%20[Port_X-Mailer:\u{13}X-Mailer:\u{13}www.actualnames.comwebsearch.getmirar.com\u{a}")))
; Strip-Player.*MyAgent.*\u{2F}newsurfer4\u{2F}
(assert (not (str.in_re X (re.++ (str.to_re "Strip-Player\u{1b}") (re.* re.allchar) (str.to_re "MyAgent") (re.* re.allchar) (str.to_re "/newsurfer4/\u{a}")))))
(check-sat)
