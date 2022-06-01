(declare-const X String)
; /version\u{3D}[\u{22}\u{27}][^\u{22}\u{27}]{1024}/
(assert (not (str.in_re X (re.++ (str.to_re "/version=") (re.union (str.to_re "\u{22}") (str.to_re "'")) ((_ re.loop 1024 1024) (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "/\u{a}")))))
; dailyinformationHost\u{3A}I\u{3a}NAME\u{3a}installs\u{2E}seekmo\u{2E}com
(assert (not (str.in_re X (str.to_re "dailyinformationHost:I:NAME:installs.seekmo.com\u{a}"))))
; ^0?[0-9]?[0-9]$|^(100)$
(assert (not (str.in_re X (re.union (re.++ (re.opt (str.to_re "0")) (re.opt (re.range "0" "9")) (re.range "0" "9")) (str.to_re "100\u{a}")))))
; ^-?([1-8]?[1-9]|[1-9]0)\.{1}\d{1,6}
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.union (re.++ (re.opt (re.range "1" "8")) (re.range "1" "9")) (re.++ (re.range "1" "9") (str.to_re "0"))) ((_ re.loop 1 1) (str.to_re ".")) ((_ re.loop 1 6) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
