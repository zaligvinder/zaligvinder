(declare-const X String)
; /TimeToLive=[^&]*?(%60|\x60)/iP
(assert (str.in.re X (re.++ (str.to.re "/TimeToLive=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "%60") (str.to.re "`")) (str.to.re "/iP\x0a"))))
; ^\d{1,2}\/\d{2,4}$
(assert (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; Agentppcdomain\x2Eco\x2EukWordSpy\-Locked
(assert (not (str.in.re X (str.to.re "Agentppcdomain.co.ukWordSpy-Locked\x0a"))))
(check-sat)
