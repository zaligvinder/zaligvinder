(declare-const X String)
; /\/ZES\d+O\d+\.jsp\?[a-z0-9=\x2b\x2f]{20}/iU
(assert (str.in.re X (re.++ (str.to.re "//ZES") (re.+ (re.range "0" "9")) (str.to.re "O") (re.+ (re.range "0" "9")) (str.to.re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "=") (str.to.re "+") (str.to.re "/"))) (str.to.re "/iU\x0a"))))
; ^[1-9]+\d*\.\d{2}$
(assert (not (str.in.re X (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\/cache\/pdf\x5Fefax\x5F\d{8,15}\.zip$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//cache/pdf_efax_") ((_ re.loop 8 15) (re.range "0" "9")) (str.to.re ".zip/Ui\x0a")))))
(check-sat)
