(declare-const X String)
; (^10\.)|(^172\.1[6-9]\.)|(^172\.2[0-9]\.)|(^172\.3[0-1]\.)|(^192\.168\.)|(^127\.0\.0\.1)
(assert (not (str.in_re X (re.union (str.to_re "10.") (re.++ (str.to_re "172.1") (re.range "6" "9") (str.to_re ".")) (re.++ (str.to_re "172.2") (re.range "0" "9") (str.to_re ".")) (re.++ (str.to_re "172.3") (re.range "0" "1") (str.to_re ".")) (str.to_re "192.168.") (str.to_re "127.0.0.1\u{a}")))))
; port\d+\.compress\s+aresflashdownloader\u{2E}comv\u{2E}dll\u{3F}\[DRIVEHost\u{3A}\u{b0}\u{ae}\u{b6}\u{f9}\u{cd}\u{f8}\u{b5}\u{c1}
(assert (not (str.in_re X (re.++ (str.to_re "port") (re.+ (re.range "0" "9")) (str.to_re ".compress") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "aresflashdownloader.comv.dll?[DRIVEHost:\u{b0}\u{ae}\u{b6}\u{f9}\u{cd}\u{f8}\u{b5}\u{c1}\u{a}")))))
; ^\d$
(assert (str.in_re X (re.++ (re.range "0" "9") (str.to_re "\u{a}"))))
; Host\u{3a}[^\n\r]*pgwtjgxwthx\u{2f}byb\.xky[^\n\r]*source%3Dultrasearch136%26campaign%3Dsnap
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "pgwtjgxwthx/byb.xky") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "source%3Dultrasearch136%26campaign%3Dsnap\u{a}"))))
; \$(\d)*\d
(assert (str.in_re X (re.++ (str.to_re "$") (re.* (re.range "0" "9")) (re.range "0" "9") (str.to_re "\u{a}"))))
(check-sat)
