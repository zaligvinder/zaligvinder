(declare-const X String)
; www\.thecommunicator\.net\sHost\x3A\dhoroscope2
(assert (str.in.re X (re.++ (str.to.re "www.thecommunicator.net") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:") (re.range "0" "9") (str.to.re "horoscope2\x0a"))))
; /filename=[^\n]*\x2exm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xm/i\x0a")))))
; ^[0-9]+[NnSs] [0-9]+[WwEe]$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.union (str.to.re "N") (str.to.re "n") (str.to.re "S") (str.to.re "s")) (str.to.re " ") (re.+ (re.range "0" "9")) (re.union (str.to.re "W") (str.to.re "w") (str.to.re "E") (str.to.re "e")) (str.to.re "\x0a")))))
(check-sat)
