(declare-const X String)
; /\/[a-zA-Z_-]+\.rtf$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "-"))) (str.to.re ".rtf/U\x0a")))))
; /\/crypt_1_sell\d\d-\d\d.exe$/Ui
(assert (str.in.re X (re.++ (str.to.re "//crypt_1_sell") (re.range "0" "9") (re.range "0" "9") (str.to.re "-") (re.range "0" "9") (re.range "0" "9") re.allchar (str.to.re "exe/Ui\x0a"))))
(check-sat)
