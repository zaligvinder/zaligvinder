(declare-const X String)
; User-Agent\x3A\d+User-Agent\x3A\d+connectedNodes\/cgi-bin\/PopupV
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "connectedNodes/cgi-bin/PopupV\x0a")))))
; /filename=[^\n]*\x2emks/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mks/i\x0a")))))
(check-sat)
