(declare-const X String)
; YAHOODesktopHost\x3aLOGHost\x3AtvshowticketsResultsFROM\x3A
(assert (str.in.re X (str.to.re "YAHOODesktopHost:LOGHost:tvshowticketsResultsFROM:\x0a")))
; /^\/\d{2,4}\.xap$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re ".xap/U\x0a")))))
; /filename=[^\n]*\x2edoc/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".doc/i\x0a"))))
; /\/setup_b\.asp\?prj=\d\x26pid=[^\r\n]*\x26mac=/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//setup_b.asp?prj=") (re.range "0" "9") (str.to.re "&pid=") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "&mac=/Ui\x0a")))))
(check-sat)
