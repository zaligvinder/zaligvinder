(declare-const X String)
; /^\/b\/(letr|req|opt|eve)\/[0-9a-fA-F]{24}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//b/") (re.union (str.to.re "letr") (str.to.re "req") (str.to.re "opt") (str.to.re "eve")) (str.to.re "/") ((_ re.loop 24 24) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "/U\x0a")))))
; /GET\s\/[\w-]{64}\sHTTP\/1\.[^\x2f]+Host\x3a\x20[^\x3a]+\x3a\d+\x0d\x0a/
(assert (str.in.re X (re.++ (str.to.re "/GET") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/") ((_ re.loop 64 64) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "HTTP/1.") (re.+ (re.comp (str.to.re "/"))) (str.to.re "Host: ") (re.+ (re.comp (str.to.re ":"))) (str.to.re ":") (re.+ (re.range "0" "9")) (str.to.re "\x0d\x0a/\x0a"))))
; /bbdd(host|user|passwd)=\x22[^\s]*?([\x60\x3b\x7c]|\x24\x28)/i
(assert (not (str.in.re X (re.++ (str.to.re "/bbdd") (re.union (str.to.re "host") (str.to.re "user") (str.to.re "passwd")) (str.to.re "=\x22") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "$(") (str.to.re "`") (str.to.re ";") (str.to.re "|")) (str.to.re "/i\x0a")))))
(check-sat)
