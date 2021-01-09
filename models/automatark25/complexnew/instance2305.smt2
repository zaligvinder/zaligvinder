(declare-const X String)
; ^[\w\s]+$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; Host\x3AWordmyway\.comhoroscope2Host
(assert (not (str.in.re X (str.to.re "Host:Wordmyway.comhoroscope2Host\x0a"))))
; MyAgentprotocolprotocolHost\x3A\x2Fs\x28robert\x40blackcastlesoft\x2Ecom\x29data2\.activshopper\.com
(assert (str.in.re X (str.to.re "MyAgentprotocolprotocolHost:/s(robert@blackcastlesoft.com)data2.activshopper.com\x0a")))
; NetControl\x2EServerNetTrackerSiLENTHost\x3A
(assert (str.in.re X (str.to.re "NetControl.Server\x13NetTrackerSiLENTHost:\x0a")))
(check-sat)
