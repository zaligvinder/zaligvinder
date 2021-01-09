(declare-const X String)
; ^[A-Z]{2}[0-9]{6}[A-DFM]{1}$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "A" "D") (str.to.re "F") (str.to.re "M"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ebcl/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".bcl/i\x0a")))))
; /STOR fp[0-9A-F]{44}\x2ebin/
(assert (not (str.in.re X (re.++ (str.to.re "/STOR fp") ((_ re.loop 44 44) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re ".bin/\x0a")))))
; ^[F][O][\s]?[0-9]{3}$
(assert (not (str.in.re X (re.++ (str.to.re "FO") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; thesearchresltLoggerHost\x3ABetaHWAEHost\x3Ais
(assert (not (str.in.re X (str.to.re "thesearchresltLoggerHost:BetaHWAEHost:is\x0a"))))
(check-sat)
