(declare-const X String)
; /\/jdb\/inf\.php\?id=[a-f0-9]{32}$/Ui
(assert (str.in.re X (re.++ (str.to.re "//jdb/inf.php?id=") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/Ui\x0a"))))
; M\x2Ezip\d+dll\x3F\s+CodeguruBrowserwww\x2Esogou\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "M.zip") (re.+ (re.range "0" "9")) (str.to.re "dll?") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "CodeguruBrowserwww.sogou.com\x0a"))))
; /\x2edxf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.dxf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^([0-9]{2})?((\([0-9]{2})\)|[0-9]{2})?([0-9]{3}|[0-9]{4})(\-)?[0-9]{4}$
(assert (not (str.in.re X (re.++ (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt (re.union (re.++ (str.to.re ")(") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9")))) (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^([07][1-7]|1[0-6]|2[0-7]|[35][0-9]|[468][0-8]|9[0-589])-?\d{7}$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "0") (str.to.re "7")) (re.range "1" "7")) (re.++ (str.to.re "1") (re.range "0" "6")) (re.++ (str.to.re "2") (re.range "0" "7")) (re.++ (re.union (str.to.re "3") (str.to.re "5")) (re.range "0" "9")) (re.++ (re.union (str.to.re "4") (str.to.re "6") (str.to.re "8")) (re.range "0" "8")) (re.++ (str.to.re "9") (re.union (re.range "0" "5") (str.to.re "8") (str.to.re "9")))) (re.opt (str.to.re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
