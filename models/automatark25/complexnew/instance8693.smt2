(declare-const X String)
; www\.thecommunicator\.net\sHost\u{3A}\dhoroscope2
(assert (str.in_re X (re.++ (str.to_re "www.thecommunicator.net") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:") (re.range "0" "9") (str.to_re "horoscope2\u{a}"))))
; /filename=[^\n]*\u{2e}xm/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xm/i\u{a}")))))
; ^[0-9]+[NnSs] [0-9]+[WwEe]$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.union (str.to_re "N") (str.to_re "n") (str.to_re "S") (str.to_re "s")) (str.to_re " ") (re.+ (re.range "0" "9")) (re.union (str.to_re "W") (str.to_re "w") (str.to_re "E") (str.to_re "e")) (str.to_re "\u{a}")))))
(check-sat)
