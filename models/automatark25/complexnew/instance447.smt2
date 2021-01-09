(declare-const X String)
; www\.123mania\.comSubject\x3APromulGate666Logger-iVisicom
(assert (not (str.in.re X (str.to.re "www.123mania.comSubject:PromulGate666Logger-iVisicom\x0a"))))
; /filename=[^\n]*\x2emswmm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mswmm/i\x0a")))))
(check-sat)
