(declare-const X String)
; Host\x3APortawww\.thecommunicator\.net
(assert (str.in.re X (str.to.re "Host:Portawww.thecommunicator.net\x0a")))
; ProjectHost\x3AlogHost\x3Awww\x2Esnap\x2EcomGoogle-\>rtServidor\x2E
(assert (str.in.re X (str.to.re "ProjectHost:logHost:www.snap.comGoogle->rtServidor.\x13\x0a")))
; /filename=[^\n]*\x2eoga/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".oga/i\x0a")))))
; ([\r\n ]*//[^\r\n]*)+
(assert (not (str.in.re X (re.++ (re.+ (re.++ (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " "))) (str.to.re "//") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))))) (str.to.re "\x0a")))))
(check-sat)
