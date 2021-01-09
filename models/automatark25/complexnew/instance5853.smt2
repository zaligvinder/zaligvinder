(declare-const X String)
; [a-z0-9][a-z0-9_\.-]{0,}[a-z0-9]\.[a-z0-9][a-z0-9_\.-]{0,}[a-z0-9][\.][cn]{2,4}
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re ".") (str.to.re "-"))) (re.union (re.range "a" "z") (re.range "0" "9")) (str.to.re ".") (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re ".") (str.to.re "-"))) (re.union (re.range "a" "z") (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 4) (re.union (str.to.re "c") (str.to.re "n"))) (str.to.re "\x0a"))))
; PcastPORT-config\x2E180solutions\x2Ecom
(assert (not (str.in.re X (str.to.re "PcastPORT-config.180solutions.com\x0a"))))
; phpinfo[^\n\r]*195\.225\.\dccecaedbebfcaf\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "phpinfo") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "195.225.") (re.range "0" "9") (str.to.re "ccecaedbebfcaf.com\x0a")))))
(check-sat)
