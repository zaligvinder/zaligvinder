(declare-const X String)
; RequestWindowszzzvmkituktgr\u{2f}etieencoder
(assert (str.in_re X (str.to_re "RequestWindowszzzvmkituktgr/etieencoder\u{a}")))
; /\/pte\.aspx\?ver=\d\.\d\.\d+\.\d\u{26}rnd=\d{5}/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//pte.aspx?ver=") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re ".") (re.range "0" "9") (str.to_re "&rnd=") ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "/Ui\u{a}")))))
; /^[0-9a-fA-F]+$/
(assert (str.in_re X (re.++ (str.to_re "/") (re.+ (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re "/\u{a}"))))
; ([A-Z]|[a-z])|\/|\?|\-|\+|\=|\&|\%|\$|\#|\@|\!|\||\\|\}|\]|\[|\{|\;|\:|\'|\"|\,|\.|\>|\<|\*|([0-9])|\(|\)|\s
(assert (not (str.in_re X (re.union (str.to_re "/") (str.to_re "?") (str.to_re "-") (str.to_re "+") (str.to_re "=") (str.to_re "&") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re "@") (str.to_re "!") (str.to_re "|") (str.to_re "\u{5c}") (str.to_re "}") (str.to_re "]") (str.to_re "[") (str.to_re "{") (str.to_re ";") (str.to_re ":") (str.to_re "'") (str.to_re "\u{22}") (str.to_re ",") (str.to_re ".") (str.to_re ">") (str.to_re "<") (str.to_re "*") (re.range "0" "9") (str.to_re "(") (str.to_re ")") (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "\u{a}")) (re.range "A" "Z") (re.range "a" "z")))))
; www\u{2E}pcsentinelsoftware\u{2E}com
(assert (not (str.in_re X (str.to_re "www.pcsentinelsoftware.com\u{a}"))))
(check-sat)
