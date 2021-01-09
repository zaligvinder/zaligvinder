(declare-const X String)
; NETObserve\d+Host\x3aohgdhkzfhdzo\x2fuwpOK\r\nHost\x3AHWAEname\x2ecnnic\x2ecn
(assert (not (str.in.re X (re.++ (str.to.re "NETObserve") (re.+ (re.range "0" "9")) (str.to.re "Host:ohgdhkzfhdzo/uwpOK\x0d\x0aHost:HWAEname.cnnic.cn\x0a")))))
; (DK-?)?([0-9]{2}\ ?){3}[0-9]{2}
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "DK") (re.opt (str.to.re "-")))) ((_ re.loop 3 3) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re " ")))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; search\x2eimesh\x2ecom\s+WatchDogupwww\.klikvipsearch\.com
(assert (str.in.re X (re.++ (str.to.re "search.imesh.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "WatchDogupwww.klikvipsearch.com\x0a"))))
; Server\s+www\x2Epeer2mail\x2Ecomsubject\x3AfileId\x3d\x5b
(assert (not (str.in.re X (re.++ (str.to.re "Server") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.peer2mail.comsubject:fileId=[\x0a")))))
(check-sat)
