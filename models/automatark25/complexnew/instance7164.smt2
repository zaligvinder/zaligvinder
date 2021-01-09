(declare-const X String)
; GamespyAttachedIndyReferer\x3AToolbarCurrent\x3BCIA
(assert (not (str.in.re X (str.to.re "GamespyAttachedIndyReferer:ToolbarCurrent;CIA\x0a"))))
; (IE-?)?[0-9][0-9A-Z\+\*][0-9]{5}[A-Z]
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "IE") (re.opt (str.to.re "-")))) (re.range "0" "9") (re.union (re.range "0" "9") (re.range "A" "Z") (str.to.re "+") (str.to.re "*")) ((_ re.loop 5 5) (re.range "0" "9")) (re.range "A" "Z") (str.to.re "\x0a")))))
(check-sat)
