(declare-const X String)
; www\.123mania\.comSubject\u{3A}PromulGate666Logger-iVisicom
(assert (not (str.in_re X (str.to_re "www.123mania.comSubject:PromulGate666Logger-iVisicom\u{a}"))))
; /filename=[^\n]*\u{2e}mswmm/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mswmm/i\u{a}")))))
(check-sat)
