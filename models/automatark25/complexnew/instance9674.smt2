(declare-const X String)
; url=Referer\x3AHost\x3AWelcome\x2FcommunicatortbGateCrasher4\x2e8\x2e4\x7D\x7BTrojan\x3AareSubject\x3a
(assert (not (str.in.re X (str.to.re "url=Referer:Host:Welcome/communicatortbGateCrasher4.8.4}{Trojan:areSubject:\x0a"))))
; /\/pte\.aspx\?ver=\d\.\d\.\d+\.\d\x26rnd=\d{5}/Ui
(assert (str.in.re X (re.++ (str.to.re "//pte.aspx?ver=") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.range "0" "9") (str.to.re "&rnd=") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
; (([2-9]{1})([0-9]{2})([0-9]{3})([0-9]{4}))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9")))))
; Supreme\d+Host\x3A\d+yxegtd\x2fefcwgHost\x3ATPSystem
(assert (str.in.re X (re.++ (str.to.re "Supreme") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "yxegtd/efcwgHost:TPSystem\x0a"))))
(check-sat)
