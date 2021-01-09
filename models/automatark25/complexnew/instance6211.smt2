(declare-const X String)
; /\/crypt_1_sell\d\d-\d\d.exe$/Ui
(assert (str.in.re X (re.++ (str.to.re "//crypt_1_sell") (re.range "0" "9") (re.range "0" "9") (str.to.re "-") (re.range "0" "9") (re.range "0" "9") re.allchar (str.to.re "exe/Ui\x0a"))))
; Referer\x3A\s+www\x2eproventactics\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "Referer:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.proventactics.com\x0a")))))
(check-sat)
