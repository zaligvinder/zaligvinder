(declare-const X String)
; /\/download\.asp\?p\=\d$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//download.asp?p=") (re.range "0" "9") (str.to.re "/Ui\x0a")))))
; /^\x2f[a-z\d]{1,8}\.exe$/Ui
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 1 8) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".exe/Ui\x0a"))))
; (^(6334)[5-9](\d{11}$|\d{13,14}$))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a6334") (re.range "5" "9") (re.union ((_ re.loop 11 11) (re.range "0" "9")) ((_ re.loop 13 14) (re.range "0" "9")))))))
; www\.searchinweb\.com\s+User-Agent\x3Abindmqnqgijmng\x2foj
(assert (str.in.re X (re.++ (str.to.re "www.searchinweb.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:bindmqnqgijmng/oj\x0a"))))
; /click.php\?c=\w{160}/Ui
(assert (str.in.re X (re.++ (str.to.re "/click") re.allchar (str.to.re "php?c=") ((_ re.loop 160 160) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/Ui\x0a"))))
(check-sat)
