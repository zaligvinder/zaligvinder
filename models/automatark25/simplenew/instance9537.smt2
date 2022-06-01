(declare-const X String)
; com\u{2F}index\.php\?tpid=\u{7D}\u{7B}User\u{3A}
(assert (not (str.in_re X (str.to_re "com/index.php?tpid=}{User:\u{a}"))))
(check-sat)
