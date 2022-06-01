(declare-const X String)
; /\/cache\/pdf\u{5F}efax\u{5F}\d{8,15}\.zip$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//cache/pdf_efax_") ((_ re.loop 8 15) (re.range "0" "9")) (str.to_re ".zip/Ui\u{a}")))))
(check-sat)
