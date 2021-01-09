(declare-const X String)
; pjpoptwql\x2frlnjsportsHost\x3ASubject\x3aYAHOOdestroyed\x21
(assert (not (str.in.re X (str.to.re "pjpoptwql/rlnjsportsHost:Subject:YAHOOdestroyed!\x0a"))))
; ((&#[0-9]+|&[a-zA-Z]+[0-9]*?);)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a;&") (re.union (re.++ (str.to.re "#") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.range "0" "9"))))))))
; User-Agent\x3A\dBarwww\x2Eaccoona\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.range "0" "9") (str.to.re "Barwww.accoona.com\x0a"))))
; ([A-Z]|[a-z])|\/|\?|\-|\+|\=|\&|\%|\$|\#|\@|\!|\||\\|\}|\]|\[|\{|\;|\:|\'|\"|\,|\.|\>|\<|\*|([0-9])|\(|\)|\s
(assert (str.in.re X (re.union (str.to.re "/") (str.to.re "?") (str.to.re "-") (str.to.re "+") (str.to.re "=") (str.to.re "&") (str.to.re "%") (str.to.re "$") (str.to.re "#") (str.to.re "@") (str.to.re "!") (str.to.re "|") (str.to.re "\x5c") (str.to.re "}") (str.to.re "]") (str.to.re "[") (str.to.re "{") (str.to.re ";") (str.to.re ":") (str.to.re "'") (str.to.re "\x22") (str.to.re ",") (str.to.re ".") (str.to.re ">") (str.to.re "<") (str.to.re "*") (re.range "0" "9") (str.to.re "(") (str.to.re ")") (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0a")) (re.range "A" "Z") (re.range "a" "z"))))
(check-sat)
