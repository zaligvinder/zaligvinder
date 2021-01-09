(declare-const X String)
; /GET\s\/[\w-]{64}\sHTTP\/1/
(assert (not (str.in.re X (re.++ (str.to.re "/GET") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/") ((_ re.loop 64 64) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "HTTP/1/\x0a")))))
; from\x3AHost\x3awww\.thecommunicator\.net
(assert (not (str.in.re X (str.to.re "from:Host:www.thecommunicator.net\x0a"))))
(check-sat)
