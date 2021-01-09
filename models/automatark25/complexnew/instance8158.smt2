(declare-const X String)
; upgrade\x2Eqsrch\x2Einfo[^\n\r]*dcww\x2Edmcast\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "upgrade.qsrch.info") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "dcww.dmcast.com\x0a"))))
; /setup=[a-z]$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/setup=") (re.range "a" "z") (str.to.re "/Ui\x0a")))))
; Host\x3A.*client\x2Ebaigoo\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "client.baigoo.com\x0a")))))
; /\/state1\.php\?[A-Za-z0-9\x2B\x2F\x3D]{300}/Ui
(assert (str.in.re X (re.++ (str.to.re "//state1.php?") ((_ re.loop 300 300) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/") (str.to.re "="))) (str.to.re "/Ui\x0a"))))
(check-sat)
