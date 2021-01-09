(declare-const X String)
; /myversion\x7c(\d\x2e){3}\d\x0d\x0a/
(assert (not (str.in.re X (re.++ (str.to.re "/myversion|") ((_ re.loop 3 3) (re.++ (re.range "0" "9") (str.to.re "."))) (re.range "0" "9") (str.to.re "\x0d\x0a/\x0a")))))
; com\x2Findex\.php\?tpid=\x7D\x7BUser\x3A
(assert (str.in.re X (str.to.re "com/index.php?tpid=}{User:\x0a")))
; clvompycem\x2fcen\.vcnHost\x3AUser-Agent\x3A\x0d\x0a
(assert (not (str.in.re X (str.to.re "clvompycem/cen.vcnHost:User-Agent:\x0d\x0a\x0a"))))
(check-sat)
