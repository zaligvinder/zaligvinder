(declare-const X String)
; .*(\.[Jj][Pp][Gg]|\.[Gg][Ii][Ff]|\.[Jj][Pp][Ee][Gg]|\.[Pp][Nn][Gg])
(assert (not (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a.") (re.union (re.++ (re.union (str.to.re "J") (str.to.re "j")) (re.union (str.to.re "P") (str.to.re "p")) (re.union (str.to.re "G") (str.to.re "g"))) (re.++ (re.union (str.to.re "G") (str.to.re "g")) (re.union (str.to.re "I") (str.to.re "i")) (re.union (str.to.re "F") (str.to.re "f"))) (re.++ (re.union (str.to.re "J") (str.to.re "j")) (re.union (str.to.re "P") (str.to.re "p")) (re.union (str.to.re "E") (str.to.re "e")) (re.union (str.to.re "G") (str.to.re "g"))) (re.++ (re.union (str.to.re "P") (str.to.re "p")) (re.union (str.to.re "N") (str.to.re "n")) (re.union (str.to.re "G") (str.to.re "g"))))))))
; \.cfg\x2Fsearchfast\x2F\x22007A-SpyWebsitehttp\x3A\x2F\x2Fsupremetoolbar\.com\x2Findex\.php\?tpid=
(assert (not (str.in.re X (str.to.re ".cfg/searchfast/\x22007A-SpyWebsitehttp://supremetoolbar.com/index.php?tpid=\x0a"))))
; ^((\d{1,3}(,\d{3})*)|(\d{1,3}))$
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) ((_ re.loop 1 3) (re.range "0" "9"))) (str.to.re "\x0a")))))
; url=\d+Host\x3A.*backtrust\x2Ecomv\x2ELoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?
(assert (not (str.in.re X (re.++ (str.to.re "url=") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.* re.allchar) (str.to.re "backtrust.comv.LoginHost:/friendship/email_thank_you?\x0a")))))
(check-sat)
