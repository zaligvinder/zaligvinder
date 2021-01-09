(declare-const X String)
; ookflolfctm\x2fnmot\.fmu
(assert (str.in.re X (str.to.re "ookflolfctm/nmot.fmu\x0a")))
; /filename=[^\n]*\x2epng/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".png/i\x0a")))))
(check-sat)
