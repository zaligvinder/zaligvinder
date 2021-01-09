(declare-const X String)
; ^([0-9]|[1-9]\d|[1-7]\d{2}|800)$
(assert (not (str.in.re X (re.++ (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "7") ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "800")) (str.to.re "\x0a")))))
; TPSystem\s+TencentTraveler\s+www\x2eurlblaze\x2enetCurrentHost\x3AWindows
(assert (not (str.in.re X (re.++ (str.to.re "TPSystem") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TencentTraveler") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.urlblaze.netCurrentHost:Windows\x0a")))))
; (^([0-9]|[0-1][0-9]|[2][0-3]):([0-5][0-9])$)|(^([0-9]|[1][0-9]|[2][0-3])$)
(assert (not (str.in.re X (re.union (re.++ (re.union (re.range "0" "9") (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9")) (re.++ (re.union (re.range "0" "9") (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re "\x0a"))))))
(check-sat)
