(declare-const X String)
; com\u{2F}index\.php\?tpid=onspyblpatUser-Agent\u{3A}Surveillance
(assert (str.in_re X (str.to_re "com/index.php?tpid=onspyblpatUser-Agent:Surveillance\u{13}\u{a}")))
(check-sat)
