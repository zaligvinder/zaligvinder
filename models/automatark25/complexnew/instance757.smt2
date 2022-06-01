(declare-const X String)
; HXLogOnlyDaemonactivityIterenetFrom\u{3A}Class
(assert (str.in_re X (str.to_re "HXLogOnlyDaemonactivityIterenetFrom:Class\u{a}")))
; ((<body)|(<BODY))([^>]*)>
(assert (not (str.in_re X (re.++ (re.union (str.to_re "<body") (str.to_re "<BODY")) (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{a}")))))
; Mirar_KeywordContent
(assert (not (str.in_re X (str.to_re "Mirar_KeywordContent\u{13}\u{a}"))))
(check-sat)
