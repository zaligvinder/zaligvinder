(declare-const X String)
; /mJKV[^\s\x0D\x0A]+1Q_fQ_fQ_fQ_fQ_fQ_fQ_fQ/U
(assert (str.in.re X (re.++ (str.to.re "/mJKV") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "1Q_fQ_fQ_fQ_fQ_fQ_fQ_fQ/U\x0a"))))
; Software\s+User-Agent\x3A.*FictionalUser-Agent\x3AUser-Agent\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Software") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "FictionalUser-Agent:User-Agent:\x0a")))))
; X-Mailer\x3A.*\x2Frss.*Desktopcargo=report\<\x2Ftitle\>
(assert (not (str.in.re X (re.++ (str.to.re "X-Mailer:\x13") (re.* re.allchar) (str.to.re "/rss") (re.* re.allchar) (str.to.re "Desktopcargo=report</title>\x0a")))))
; Logger\w+searchreslt\dSubject\x3AHANDY\x2FrssScaner
(assert (not (str.in.re X (re.++ (str.to.re "Logger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "searchreslt") (re.range "0" "9") (str.to.re "Subject:HANDY/rssScaner\x0a")))))
; ^((\+989)|(989)|(00989)|(09|9))([1|2|3][0-9]\d{7}$)
(assert (str.in.re X (re.++ (re.union (str.to.re "+989") (str.to.re "989") (str.to.re "00989") (str.to.re "09") (str.to.re "9")) (str.to.re "\x0a") (re.union (str.to.re "1") (str.to.re "|") (str.to.re "2") (str.to.re "3")) (re.range "0" "9") ((_ re.loop 7 7) (re.range "0" "9")))))
(check-sat)
