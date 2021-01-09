(declare-const X String)
; corep\x2Edmcast\x2EcomOwner\x3A
(assert (not (str.in.re X (str.to.re "corep.dmcast.comOwner:\x0a"))))
; Host\x3A\w+Host\x3AUser-Agent\x3ATPSystemad\x2Esearchsquire\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:User-Agent:TPSystemad.searchsquire.com\x0a"))))
(check-sat)
