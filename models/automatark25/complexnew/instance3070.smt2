(declare-const X String)
; ^([012346789][0-9]{4})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9")) ((_ re.loop 4 4) (re.range "0" "9")))))
; LOG\s+spyblpatHost\x3Ais\x2Ephp
(assert (not (str.in.re X (re.++ (str.to.re "LOG") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblpatHost:is.php\x0a")))))
; Mirar_KeywordContent
(assert (str.in.re X (str.to.re "Mirar_KeywordContent\x13\x0a")))
; www\x2Ewebcruiser\x2Eccgot
(assert (str.in.re X (str.to.re "www.webcruiser.ccgot\x0a")))
; \r\nSTATUS\x3A\dHost\x3aReferer\x3AServerSubject\x3a
(assert (str.in.re X (re.++ (str.to.re "\x0d\x0aSTATUS:") (re.range "0" "9") (str.to.re "Host:Referer:ServerSubject:\x0a"))))
(check-sat)
