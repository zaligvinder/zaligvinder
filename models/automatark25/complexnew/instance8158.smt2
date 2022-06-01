(declare-const X String)
; upgrade\u{2E}qsrch\u{2E}info[^\n\r]*dcww\u{2E}dmcast\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "upgrade.qsrch.info") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "dcww.dmcast.com\u{a}"))))
; /setup=[a-z]$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/setup=") (re.range "a" "z") (str.to_re "/Ui\u{a}")))))
; Host\u{3A}.*client\u{2E}baigoo\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "client.baigoo.com\u{a}")))))
; /\/state1\.php\?[A-Za-z0-9\u{2B}\u{2F}\u{3D}]{300}/Ui
(assert (str.in_re X (re.++ (str.to_re "//state1.php?") ((_ re.loop 300 300) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "/") (str.to_re "="))) (str.to_re "/Ui\u{a}"))))
(check-sat)
