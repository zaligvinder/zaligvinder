(declare-const X String)
; GamespyAttachedIndyReferer\u{3A}ToolbarCurrent\u{3B}CIA
(assert (not (str.in_re X (str.to_re "GamespyAttachedIndyReferer:ToolbarCurrent;CIA\u{a}"))))
; (IE-?)?[0-9][0-9A-Z\+\*][0-9]{5}[A-Z]
(assert (not (str.in_re X (re.++ (re.opt (re.++ (str.to_re "IE") (re.opt (str.to_re "-")))) (re.range "0" "9") (re.union (re.range "0" "9") (re.range "A" "Z") (str.to_re "+") (str.to_re "*")) ((_ re.loop 5 5) (re.range "0" "9")) (re.range "A" "Z") (str.to_re "\u{a}")))))
(check-sat)
