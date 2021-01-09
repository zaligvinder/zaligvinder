(declare-const X String)
; ^[a-zA-Z]\w{0,30}$
(assert (not (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 0 30) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; Host\x3A\s+www\.iggsey\.comcs\x2Esmartshopper\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.iggsey.comcs.smartshopper.com\x0a")))))
; /setup=[a-z]$/Ui
(assert (str.in.re X (re.++ (str.to.re "/setup=") (re.range "a" "z") (str.to.re "/Ui\x0a"))))
; NETObserve\d+Host\x3aohgdhkzfhdzo\x2fuwpOK\r\nHost\x3AHWAEname\x2ecnnic\x2ecn
(assert (str.in.re X (re.++ (str.to.re "NETObserve") (re.+ (re.range "0" "9")) (str.to.re "Host:ohgdhkzfhdzo/uwpOK\x0d\x0aHost:HWAEname.cnnic.cn\x0a"))))
(check-sat)
