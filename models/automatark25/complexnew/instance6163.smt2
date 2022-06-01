(declare-const X String)
; configINTERNAL\.inikwdwww\u{2E}wordiq\u{2E}comas\u{2E}starware\u{2E}com
(assert (str.in_re X (str.to_re "configINTERNAL.inikwdwww.wordiq.com\u{1b}as.starware.com\u{a}")))
; /filename=[^\n]*\u{2e}sum/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".sum/i\u{a}"))))
; /SOAPAction\u{3A}\s*?\u{22}[^\u{22}\u{23}]+?\u{23}([^\u{22}]{2048}|[^\u{22}]+$)/Hsi
(assert (str.in_re X (re.++ (str.to_re "/SOAPAction:") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{22}") (re.+ (re.union (str.to_re "\u{22}") (str.to_re "#"))) (str.to_re "#") (re.union ((_ re.loop 2048 2048) (re.comp (str.to_re "\u{22}"))) (re.+ (re.comp (str.to_re "\u{22}")))) (str.to_re "/Hsi\u{a}"))))
; /(bot|spider|crawler|google)/
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "bot") (str.to_re "spider") (str.to_re "crawler") (str.to_re "google")) (str.to_re "/\u{a}"))))
(check-sat)
