(declare-const X String)
; url=http\u{3A}GamespyjspIDENTIFYserverHOST\u{3A}Subject\u{3A}
(assert (str.in_re X (str.to_re "url=http:\u{1b}GamespyjspIDENTIFYserverHOST:Subject:\u{a}")))
(check-sat)
