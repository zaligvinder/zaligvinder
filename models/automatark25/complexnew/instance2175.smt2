(declare-const X String)
; (\"http:\/\/video\.google\.com\/googleplayer\.swf\?docId=\d{19}\&hl=[a-z]{2}\")
(assert (not (str.in.re X (re.++ (str.to.re "\x0a\x22http://video.google.com/googleplayer.swf?docId=") ((_ re.loop 19 19) (re.range "0" "9")) (str.to.re "&hl=") ((_ re.loop 2 2) (re.range "a" "z")) (str.to.re "\x22")))))
; %3fc=UI2GmbHbacktrust\x2EcomSpediaReferer\x3ASubject\x3aHost\x3apasscorrect\x3B
(assert (not (str.in.re X (str.to.re "%3fc=UI2GmbHbacktrust.comSpediaReferer:Subject:Host:passcorrect;\x0a"))))
(check-sat)
