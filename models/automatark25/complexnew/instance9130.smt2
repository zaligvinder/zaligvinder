(declare-const X String)
; TCP\s+Host\x3a\x7D\x7Crichfind\x2EcomHost\x3ASubject\x3a
(assert (not (str.in.re X (re.++ (str.to.re "TCP") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:}|richfind.comHost:Subject:\x0a")))))
; /Content-Disposition\x3a\x20inline\x3b[^\x0d\x0a]filename=[a-z]{5,8}\d{2,3}\.pdf\x0d\x0a/Hm
(assert (not (str.in.re X (re.++ (str.to.re "/Content-Disposition: inline;") (re.union (str.to.re "\x0d") (str.to.re "\x0a")) (str.to.re "filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ".pdf\x0d\x0a/Hm\x0a")))))
; %3f\s+url=[^\n\r]*httpUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "%3f") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "url=") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "httpUser-Agent:\x0a"))))
; /^\/\/?[a-z0-9_]{7,8}\/\??[0-9a-f]{60,68}[\x3b\x2c\d+]*$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.opt (str.to.re "/")) ((_ re.loop 7 8) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "_"))) (str.to.re "/") (re.opt (str.to.re "?")) ((_ re.loop 60 68) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.* (re.union (str.to.re ";") (str.to.re ",") (re.range "0" "9") (str.to.re "+"))) (str.to.re "/U\x0a")))))
; User-Agent\x3a\s+Host\x3A\s+proxystylesheet=Excitefhfksjzsfu\x2fahm\.uqs
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "proxystylesheet=Excitefhfksjzsfu/ahm.uqs\x0a"))))
(check-sat)
