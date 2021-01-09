(declare-const X String)
; ovplSubject\x3ATencentTravelerClient\x7D\x7BSysuptime\x3A
(assert (str.in.re X (str.to.re "ovplSubject:TencentTravelerClient}{Sysuptime:\x0a")))
; Host\x3A\sToolbarServerserver\x7D\x7BSysuptime\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "ToolbarServerserver}{Sysuptime:\x0a"))))
; [0-9][.][0-9]{3}$
(assert (str.in.re X (re.++ (re.range "0" "9") (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; User-Agent\x3a\s+sErver\s+-~-GREATHost\x3a
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "sErver") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "-~-GREATHost:\x0a")))))
(check-sat)
