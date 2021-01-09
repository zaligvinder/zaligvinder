(declare-const X String)
; trustyfiles\x2Ecom\szopabora\x2Einfo\w+User-Agent\x3AHost\x3ATeomaBarHost\x3AHours
(assert (str.in.re X (re.++ (str.to.re "trustyfiles.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "zopabora.info") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "User-Agent:Host:TeomaBarHost:Hours\x0a"))))
(check-sat)
