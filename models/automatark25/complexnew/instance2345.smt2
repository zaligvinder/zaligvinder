(declare-const X String)
; pjpoptwql\u{2f}rlnjsportsHost\u{3A}Subject\u{3a}YAHOOdestroyed\u{21}
(assert (not (str.in_re X (str.to_re "pjpoptwql/rlnjsportsHost:Subject:YAHOOdestroyed!\u{a}"))))
; ((&#[0-9]+|&[a-zA-Z]+[0-9]*?);)
(assert (not (str.in_re X (re.++ (str.to_re "\u{a};&") (re.union (re.++ (str.to_re "#") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.range "0" "9"))))))))
; User-Agent\u{3A}\dBarwww\u{2E}accoona\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.range "0" "9") (str.to_re "Barwww.accoona.com\u{a}"))))
; ([A-Z]|[a-z])|\/|\?|\-|\+|\=|\&|\%|\$|\#|\@|\!|\||\\|\}|\]|\[|\{|\;|\:|\'|\"|\,|\.|\>|\<|\*|([0-9])|\(|\)|\s
(assert (str.in_re X (re.union (str.to_re "/") (str.to_re "?") (str.to_re "-") (str.to_re "+") (str.to_re "=") (str.to_re "&") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re "@") (str.to_re "!") (str.to_re "|") (str.to_re "\u{5c}") (str.to_re "}") (str.to_re "]") (str.to_re "[") (str.to_re "{") (str.to_re ";") (str.to_re ":") (str.to_re "'") (str.to_re "\u{22}") (str.to_re ",") (str.to_re ".") (str.to_re ">") (str.to_re "<") (str.to_re "*") (re.range "0" "9") (str.to_re "(") (str.to_re ")") (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "\u{a}")) (re.range "A" "Z") (re.range "a" "z"))))
(check-sat)
