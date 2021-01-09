(declare-const X String)
; ^([0]?[1-9]|[1|2][0-9]|[3][0|1])[./-]([0]?[1-9]|[1][0-2])[./-]([0-9]{4}|[0-9]{2})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "|") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "|") (str.to.re "1")))) (re.union (str.to.re ".") (str.to.re "/") (str.to.re "-")) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (re.union (str.to.re ".") (str.to.re "/") (str.to.re "-")) (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "\x0a")))))
; \x2Ehtml\s+IDENTIFY\s+\x2Fbar_pl\x2Ffav\.fcgiwwwUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re ".html") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "IDENTIFY") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/bar_pl/fav.fcgiwwwUser-Agent:\x0a")))))
; ReportIterenetUser-Agent\x3AHost\x3AKEYLOGGER\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (str.in.re X (str.to.re "ReportIterenetUser-Agent:Host:KEYLOGGER/bar_pl/chk_bar.fcgi\x0a")))
; /\?spl=\d&br=[^&]+&vers=[^&]+&s=/H
(assert (not (str.in.re X (re.++ (str.to.re "/?spl=") (re.range "0" "9") (str.to.re "&br=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&vers=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&s=/H\x0a")))))
; /skillName\x3D\x7B\x28\x23/Ui
(assert (not (str.in.re X (str.to.re "/skillName={(#/Ui\x0a"))))
(check-sat)
