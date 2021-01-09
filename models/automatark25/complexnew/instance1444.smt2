(declare-const X String)
; ^(([1-9]{1}\d{0,2},(\d{3},)*\d{3})|([1-9]{1}\d{0,}))$
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re "\x0a")))))
; ^09(73|74|05|06|15|16|17|26|27|35|36|37|79|38|07|08|09|10|12|18|19|20|21|28|29|30|38|39|89|99|22|23|32|33)\d{3}\s?\d{4}
(assert (str.in.re X (re.++ (str.to.re "09") (re.union (str.to.re "73") (str.to.re "74") (str.to.re "05") (str.to.re "06") (str.to.re "15") (str.to.re "16") (str.to.re "17") (str.to.re "26") (str.to.re "27") (str.to.re "35") (str.to.re "36") (str.to.re "37") (str.to.re "79") (str.to.re "38") (str.to.re "07") (str.to.re "08") (str.to.re "09") (str.to.re "10") (str.to.re "12") (str.to.re "18") (str.to.re "19") (str.to.re "20") (str.to.re "21") (str.to.re "28") (str.to.re "29") (str.to.re "30") (str.to.re "38") (str.to.re "39") (str.to.re "89") (str.to.re "99") (str.to.re "22") (str.to.re "23") (str.to.re "32") (str.to.re "33")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; Keylogger-Pro\s+isUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Keylogger-Pro") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "isUser-Agent:\x0a"))))
; findX-Mailer\x3aUser-Agent\x3Awww\.take5bingo\.comX-Mailer\x3a\x04\x00
(assert (str.in.re X (str.to.re "findX-Mailer:\x13User-Agent:www.take5bingo.com\x1bX-Mailer:\x13\x04\x00\x0a")))
; Referer\x3A\s+HXDownload.*Referer\x3AGREATDripline
(assert (str.in.re X (re.++ (str.to.re "Referer:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HXDownload") (re.* re.allchar) (str.to.re "Referer:GREATDripline\x0a"))))
(check-sat)
