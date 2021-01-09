(declare-const X String)
; HXLogOnlyDaemonactivityIterenetFrom\x3AClass
(assert (str.in.re X (str.to.re "HXLogOnlyDaemonactivityIterenetFrom:Class\x0a")))
; ((<body)|(<BODY))([^>]*)>
(assert (not (str.in.re X (re.++ (re.union (str.to.re "<body") (str.to.re "<BODY")) (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a")))))
; Mirar_KeywordContent
(assert (not (str.in.re X (str.to.re "Mirar_KeywordContent\x13\x0a"))))
(check-sat)
