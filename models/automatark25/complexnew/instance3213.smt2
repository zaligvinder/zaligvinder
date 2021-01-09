(declare-const X String)
; /filename=[^\n]*\x2emht/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mht/i\x0a"))))
; /\/download\.asp\?p\=\d$/Ui
(assert (str.in.re X (re.++ (str.to.re "//download.asp?p=") (re.range "0" "9") (str.to.re "/Ui\x0a"))))
(check-sat)
