(declare-const X String)
; (\"http:\/\/video\.google\.com\/googleplayer\.swf\?docId=\d{19}\&hl=[a-z]{2}\")
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}\u{22}http://video.google.com/googleplayer.swf?docId=") ((_ re.loop 19 19) (re.range "0" "9")) (str.to_re "&hl=") ((_ re.loop 2 2) (re.range "a" "z")) (str.to_re "\u{22}")))))
; %3fc=UI2GmbHbacktrust\u{2E}comSpediaReferer\u{3A}Subject\u{3a}Host\u{3a}passcorrect\u{3B}
(assert (not (str.in_re X (str.to_re "%3fc=UI2GmbHbacktrust.comSpediaReferer:Subject:Host:passcorrect;\u{a}"))))
(check-sat)
