(declare-const X String)
; asdbiz\x2Ebiz\s+HWAEUser-Agent\x3ATheef2
(assert (not (str.in.re X (re.++ (str.to.re "asdbiz.biz") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HWAEUser-Agent:Theef2\x0a")))))
; /filename=[^\n]*\x2ewal/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wal/i\x0a"))))
(check-sat)
