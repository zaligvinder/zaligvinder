(declare-const X String)
; /new (java|org)/Ui
(assert (str.in.re X (re.++ (str.to.re "/new ") (re.union (str.to.re "java") (str.to.re "org")) (str.to.re "/Ui\x0a"))))
; /filename=[^\n]*\x2ef4a/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".f4a/i\x0a"))))
; trustyfiles\x2EcomBlade\x23\x23\x23\x23\.smx\?
(assert (not (str.in.re X (str.to.re "trustyfiles.comBlade####.smx?\x0a"))))
; /filename=[^\n]*\x2ehhk/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".hhk/i\x0a")))))
(check-sat)
