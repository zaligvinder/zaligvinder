(declare-const X String)
; /^\/jhan.jar?r=\d+/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//jhan") re.allchar (str.to.re "ja") (re.opt (str.to.re "r")) (str.to.re "r=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; (jar:)?file:/(([A-Z]:)?/([A-Z0-9\*\()\+\-\&$#@_.!~\[\]/])+)((/[A-Z0-9_()\[\]\-=\+_~]+\.jar!)|([^!])(/com/regexlib/example/))
(assert (str.in.re X (re.++ (re.opt (str.to.re "jar:")) (str.to.re "file:/") (re.union (re.++ (str.to.re "/") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "(") (str.to.re ")") (str.to.re "[") (str.to.re "]") (str.to.re "-") (str.to.re "=") (str.to.re "+") (str.to.re "~"))) (str.to.re ".jar!")) (re.++ (re.comp (str.to.re "!")) (str.to.re "/com/regexlib/example/"))) (str.to.re "\x0a") (re.opt (re.++ (re.range "A" "Z") (str.to.re ":"))) (str.to.re "/") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "*") (str.to.re "(") (str.to.re ")") (str.to.re "+") (str.to.re "-") (str.to.re "&") (str.to.re "$") (str.to.re "#") (str.to.re "@") (str.to.re "_") (str.to.re ".") (str.to.re "!") (str.to.re "~") (str.to.re "[") (str.to.re "]") (str.to.re "/"))))))
; Host\x3A\sHello\x2E.*forum=
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Hello.") (re.* re.allchar) (str.to.re "forum=\x0a")))))
; /filename=[^\n]*\x2ecsd/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".csd/i\x0a"))))
(check-sat)
