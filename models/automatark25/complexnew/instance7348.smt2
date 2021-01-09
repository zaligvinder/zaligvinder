(declare-const X String)
; (\d{6}[-\s]?\d{12})|(\d{4}[-\s]?\d{4}[-\s]?\d{4}[-\s]?\d{4})
(assert (str.in.re X (re.union (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ (str.to.re "\x0a") ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9"))))))
; ^(0)$|^([1-9][0-9]*)$
(assert (str.in.re X (re.union (str.to.re "0") (re.++ (str.to.re "\x0a") (re.range "1" "9") (re.* (re.range "0" "9"))))))
; ^http://\w{0,3}.?youtube+\.\w{2,3}/watch\?v=[\w-]{11}
(assert (not (str.in.re X (re.++ (str.to.re "http://") ((_ re.loop 0 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt re.allchar) (str.to.re "youtub") (re.+ (str.to.re "e")) (str.to.re ".") ((_ re.loop 2 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/watch?v=") ((_ re.loop 11 11) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; \d{6}
(assert (str.in.re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; /GET\s\/[\w-]{64}\sHTTP\/1\.[^\x2f]+Host\x3a\x20[^\x3a]+\x3a\d+\x0d\x0a/
(assert (str.in.re X (re.++ (str.to.re "/GET") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/") ((_ re.loop 64 64) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "HTTP/1.") (re.+ (re.comp (str.to.re "/"))) (str.to.re "Host: ") (re.+ (re.comp (str.to.re ":"))) (str.to.re ":") (re.+ (re.range "0" "9")) (str.to.re "\x0d\x0a/\x0a"))))
(check-sat)
