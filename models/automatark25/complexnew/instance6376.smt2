(declare-const X String)
; ([^\\"]|\\.)*
(assert (str.in_re X (re.++ (re.* (re.union (re.++ (str.to_re "\u{5c}") re.allchar) (str.to_re "\u{5c}") (str.to_re "\u{22}"))) (str.to_re "\u{a}"))))
; com\u{2F}index\.php\?tpid=onspyblpatUser-Agent\u{3A}Surveillance
(assert (not (str.in_re X (str.to_re "com/index.php?tpid=onspyblpatUser-Agent:Surveillance\u{13}\u{a}"))))
(check-sat)
