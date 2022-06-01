(declare-const X String)
; /^\/jhan.jar?r=\d+/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//jhan") re.allchar (str.to_re "ja") (re.opt (str.to_re "r")) (str.to_re "r=") (re.+ (re.range "0" "9")) (str.to_re "/Ui\u{a}")))))
; (jar:)?file:/(([A-Z]:)?/([A-Z0-9\*\()\+\-\&$#@_.!~\[\]/])+)((/[A-Z0-9_()\[\]\-=\+_~]+\.jar!)|([^!])(/com/regexlib/example/))
(assert (str.in_re X (re.++ (re.opt (str.to_re "jar:")) (str.to_re "file:/") (re.union (re.++ (str.to_re "/") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "(") (str.to_re ")") (str.to_re "[") (str.to_re "]") (str.to_re "-") (str.to_re "=") (str.to_re "+") (str.to_re "~"))) (str.to_re ".jar!")) (re.++ (re.comp (str.to_re "!")) (str.to_re "/com/regexlib/example/"))) (str.to_re "\u{a}") (re.opt (re.++ (re.range "A" "Z") (str.to_re ":"))) (str.to_re "/") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to_re "*") (str.to_re "(") (str.to_re ")") (str.to_re "+") (str.to_re "-") (str.to_re "&") (str.to_re "$") (str.to_re "#") (str.to_re "@") (str.to_re "_") (str.to_re ".") (str.to_re "!") (str.to_re "~") (str.to_re "[") (str.to_re "]") (str.to_re "/"))))))
; Host\u{3A}\sHello\u{2E}.*forum=
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Hello.") (re.* re.allchar) (str.to_re "forum=\u{a}")))))
; /filename=[^\n]*\u{2e}csd/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".csd/i\u{a}"))))
(check-sat)
