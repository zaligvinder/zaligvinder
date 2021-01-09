(declare-const X String)
; /filename=[^\n]*\x2ejfif/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jfif/i\x0a"))))
; /^From\x3A[^\r\n]*Trojaner-Info<webmaster@trojaner-info\x2Ede>/smi
(assert (not (str.in.re X (re.++ (str.to.re "/From:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "Trojaner-Info<webmaster@trojaner-info.de>/smi\x0a")))))
; TCP\s+Host\x3a\x7D\x7Crichfind\x2EcomHost\x3ASubject\x3a
(assert (not (str.in.re X (re.++ (str.to.re "TCP") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:}|richfind.comHost:Subject:\x0a")))))
(check-sat)
