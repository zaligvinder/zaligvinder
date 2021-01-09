(declare-const X String)
; Host\x3AuploadServer3AdapupdEFErrorSubject\x3a
(assert (str.in.re X (str.to.re "Host:uploadServer3AdapupdEFErrorSubject:\x0a")))
(check-sat)
