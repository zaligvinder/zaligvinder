(declare-const X String)
; filename=\x22\dDA\s+www\x2Epeer2mail\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "filename=\x22") (re.range "0" "9") (str.to.re "DA") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.peer2mail.com\x0a")))))
; Logger.*aresflashdownloader\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Logger") (re.* re.allchar) (str.to.re "aresflashdownloader.com\x0a")))))
; ^[a-zA-Z0-9\s.\-_']+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "-") (str.to.re "_") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; ^[^ ,0]*$
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re ",") (str.to.re "0"))) (str.to.re "\x0a"))))
; /(sIda\/sId|urua\/uru)[abcd]\.classPK/ims
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "sIda/sId") (str.to.re "urua/uru")) (re.union (str.to.re "a") (str.to.re "b") (str.to.re "c") (str.to.re "d")) (str.to.re ".classPK/ims\x0a"))))
(check-sat)
