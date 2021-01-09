(declare-const X String)
; ([A-Z]|[a-z])|\/|\?|\-|\+|\=|\&|\%|\$|\#|\@|\!|\||\\|\}|\]|\[|\{|\;|\:|\'|\"|\,|\.|\>|\<|\*|([0-9])|\(|\)|\s
(assert (str.in.re X (re.union (str.to.re "/") (str.to.re "?") (str.to.re "-") (str.to.re "+") (str.to.re "=") (str.to.re "&") (str.to.re "%") (str.to.re "$") (str.to.re "#") (str.to.re "@") (str.to.re "!") (str.to.re "|") (str.to.re "\x5c") (str.to.re "}") (str.to.re "]") (str.to.re "[") (str.to.re "{") (str.to.re ";") (str.to.re ":") (str.to.re "'") (str.to.re "\x22") (str.to.re ",") (str.to.re ".") (str.to.re ">") (str.to.re "<") (str.to.re "*") (re.range "0" "9") (str.to.re "(") (str.to.re ")") (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0a")) (re.range "A" "Z") (re.range "a" "z"))))
; ^
(assert (str.in.re X (str.to.re "\x0a")))
; /\.jpg\x20HTTP\/1\.[01]\r\nUser\x2dAgent\x3a\x20[a-z]+\r\nHost\x3a\x20[a-z0-9\x2d\x2e]+\.com\.br\r\n\r\n$/
(assert (not (str.in.re X (re.++ (str.to.re "/.jpg HTTP/1.") (re.union (str.to.re "0") (str.to.re "1")) (str.to.re "\x0d\x0aUser-Agent: ") (re.+ (re.range "a" "z")) (str.to.re "\x0d\x0aHost: ") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".com.br\x0d\x0a\x0d\x0a/\x0a")))))
(check-sat)
