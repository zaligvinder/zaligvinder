(declare-const X String)
; ^([0-9]{2})?(\([0-9]{2})\)([0-9]{3}|[0-9]{4})-[0-9]{4}$
(assert (not (str.in_re X (re.++ (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (str.to_re ")") (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}(") ((_ re.loop 2 2) (re.range "0" "9"))))))
; DesktopSupportFiles\u{2E}htmlReferer\u{3A}www\u{2E}freescratchandwin\u{2E}com
(assert (not (str.in_re X (str.to_re "DesktopSupportFiles\u{13}.htmlReferer:www.freescratchandwin.com\u{a}"))))
(check-sat)
