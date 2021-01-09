(declare-const X String)
; (^10\.)|(^172\.1[6-9]\.)|(^172\.2[0-9]\.)|(^172\.3[0-1]\.)|(^192\.168\.)|(^127\.0\.0\.1)
(assert (not (str.in.re X (re.union (str.to.re "10.") (re.++ (str.to.re "172.1") (re.range "6" "9") (str.to.re ".")) (re.++ (str.to.re "172.2") (re.range "0" "9") (str.to.re ".")) (re.++ (str.to.re "172.3") (re.range "0" "1") (str.to.re ".")) (str.to.re "192.168.") (str.to.re "127.0.0.1\x0a")))))
; port\d+\.compress\s+aresflashdownloader\x2Ecomv\x2Edll\x3F\[DRIVEHost\x3A\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1
(assert (not (str.in.re X (re.++ (str.to.re "port") (re.+ (re.range "0" "9")) (str.to.re ".compress") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "aresflashdownloader.comv.dll?[DRIVEHost:\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1\x0a")))))
; ^\d$
(assert (str.in.re X (re.++ (re.range "0" "9") (str.to.re "\x0a"))))
; Host\x3a[^\n\r]*pgwtjgxwthx\x2fbyb\.xky[^\n\r]*source%3Dultrasearch136%26campaign%3Dsnap
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "pgwtjgxwthx/byb.xky") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "source%3Dultrasearch136%26campaign%3Dsnap\x0a"))))
; \$(\d)*\d
(assert (str.in.re X (re.++ (str.to.re "$") (re.* (re.range "0" "9")) (re.range "0" "9") (str.to.re "\x0a"))))
(check-sat)
