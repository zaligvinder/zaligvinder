(declare-const X String)
; media\x2Edxcdirect\x2Ecom\.smx\?PASSW=SAHHost\x3AProAgentIDENTIFY
(assert (str.in.re X (str.to.re "media.dxcdirect.com.smx?PASSW=SAHHost:ProAgentIDENTIFY\x0a")))
; \x28\x29\s+WatchDog\sNetspyt=WeHost\x3A\x2Fcgi\x2Flogurl\.cgiwww\x2Ekliksearch\x2Ecom1\x2E3\x7D\x7BTrojan\x3A
(assert (not (str.in.re X (re.++ (str.to.re "()") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "WatchDog") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Netspyt=WeHost:/cgi/logurl.cgiwww.kliksearch.com1.3}{Trojan:\x0a")))))
; /^\/0[a-z]{0,13}[0-9]{0,12}[a-z][a-z0-9]{1,11}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//0") ((_ re.loop 0 13) (re.range "a" "z")) ((_ re.loop 0 12) (re.range "0" "9")) (re.range "a" "z") ((_ re.loop 1 11) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
(check-sat)
