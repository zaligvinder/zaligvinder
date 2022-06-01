(declare-const X String)
; /filename=[^\n]*\u{2e}sami/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".sami/i\u{a}"))))
; /User\u{2d}Agent\u{3a}\u{20}[A-F\d]{32}\r\n/H
(assert (str.in_re X (re.++ (str.to_re "/User-Agent: ") ((_ re.loop 32 32) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "\u{d}\u{a}/H\u{a}"))))
; Dripline\d+X-Mailer\u{3a}\u{4}\u{0}TCP
(assert (not (str.in_re X (re.++ (str.to_re "Dripline") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer:\u{13}\u{4}\u{0}TCP\u{a}")))))
; dll\u{3F}\[DRIVEHost\u{3A}\u{b0}\u{ae}\u{b6}\u{f9}\u{cd}\u{f8}\u{b5}\u{c1}
(assert (not (str.in_re X (str.to_re "dll?[DRIVEHost:\u{b0}\u{ae}\u{b6}\u{f9}\u{cd}\u{f8}\u{b5}\u{c1}\u{a}"))))
(check-sat)
