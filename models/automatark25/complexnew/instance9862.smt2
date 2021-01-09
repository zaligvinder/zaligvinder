(declare-const X String)
; [-+]((0[0-9]|1[0-3]):([03]0|45)|14:00)
(assert (not (str.in.re X (re.++ (re.union (str.to.re "-") (str.to.re "+")) (re.union (re.++ (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "3"))) (str.to.re ":") (re.union (re.++ (re.union (str.to.re "0") (str.to.re "3")) (str.to.re "0")) (str.to.re "45"))) (str.to.re "14:00")) (str.to.re "\x0a")))))
; (01*0|1)*
(assert (str.in.re X (re.++ (re.* (re.union (re.++ (str.to.re "0") (re.* (str.to.re "1")) (str.to.re "0")) (str.to.re "1"))) (str.to.re "\x0a"))))
; User-Agent\x3A\s+HXDownloadup
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HXDownloadup\x0a")))))
(check-sat)
