(declare-const X String)
; /\x2fb\x2fshoe\x2f[0-9]{3,5}$/U
(assert (str.in.re X (re.++ (str.to.re "//b/shoe/") ((_ re.loop 3 5) (re.range "0" "9")) (str.to.re "/U\x0a"))))
; ProjectMyWebSearchSearchAssistantfast-look\x2EcomOneReporter
(assert (str.in.re X (str.to.re "ProjectMyWebSearchSearchAssistantfast-look.comOneReporter\x0a")))
; /\/\d+\.mp3$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "0" "9")) (str.to.re ".mp3/U\x0a")))))
(check-sat)
