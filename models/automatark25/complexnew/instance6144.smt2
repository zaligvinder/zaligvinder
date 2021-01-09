(declare-const X String)
; /filename=[^\n]*\x2eeot/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".eot/i\x0a")))))
; as\x2Estarware\x2Ecom%3fUser-Agent\x3Ahostie
(assert (not (str.in.re X (str.to.re "as.starware.com%3fUser-Agent:hostie\x0a"))))
(check-sat)
