(declare-const X String)
; /\/cache\/pdf\x5Fefax\x5F\d{8,15}\.zip$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//cache/pdf_efax_") ((_ re.loop 8 15) (re.range "0" "9")) (str.to.re ".zip/Ui\x0a")))))
(check-sat)
