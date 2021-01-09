(declare-const X String)
; \b(0[0-9]|1[0-9]|2[0-3])(\:)(0[0-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9])(\:)(0[0-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9])\b
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "9")) (re.++ (str.to.re "4") (re.range "0" "9")) (re.++ (str.to.re "5") (re.range "0" "9"))) (str.to.re ":") (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "9")) (re.++ (str.to.re "4") (re.range "0" "9")) (re.++ (str.to.re "5") (re.range "0" "9"))) (str.to.re "\x0a")))))
; /\)\r\nHost\x3a\x20[a-z\d\x2e\x2d]{6,32}\r\nCache\x2dControl\x3a\x20no\x2dcache\r\n\r\n$/
(assert (not (str.in.re X (re.++ (str.to.re "/)\x0d\x0aHost: ") ((_ re.loop 6 32) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re ".") (str.to.re "-"))) (str.to.re "\x0d\x0aCache-Control: no-cache\x0d\x0a\x0d\x0a/\x0a")))))
; Host\x3AHost\x3AFrom\x3a\x03\x00\x1c\x00\x00\x00\x00\x00\x01Furaxbnymomspyo\x2fzowy
(assert (not (str.in.re X (str.to.re "Host:Host:From:\x03\x00\x1c\x00\x00\x00\x00\x00\x01Furaxbnymomspyo/zowy\x0a"))))
(check-sat)
