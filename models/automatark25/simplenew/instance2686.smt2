(declare-const X String)
; /\/crypt_1_sell\d\d-\d\d.exe$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//crypt_1_sell") (re.range "0" "9") (re.range "0" "9") (str.to.re "-") (re.range "0" "9") (re.range "0" "9") re.allchar (str.to.re "exe/Ui\x0a")))))
(check-sat)
