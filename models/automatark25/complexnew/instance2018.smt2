(declare-const X String)
; ^(.*?)([^/\\]*?)(\.[^/\\.]*)?$
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.* (re.union (str.to.re "/") (str.to.re "\x5c"))) (re.opt (re.++ (str.to.re ".") (re.* (re.union (str.to.re "/") (str.to.re "\x5c") (str.to.re "."))))) (str.to.re "\x0a")))))
; /GET \/[a-z]{8,12}\?[a-z] HTTP\/1.1/i
(assert (not (str.in.re X (re.++ (str.to.re "/GET /") ((_ re.loop 8 12) (re.range "a" "z")) (str.to.re "?") (re.range "a" "z") (str.to.re " HTTP/1") re.allchar (str.to.re "1/i\x0a")))))
; User-Agent\x3a\sRequestwww\x2Ealtnet\x2EcomSubject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Requestwww.altnet.com\x1bSubject:\x0a")))))
(check-sat)
