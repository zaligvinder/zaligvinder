(declare-const X String)
; /filename=[^\n]*\u{2e}asx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".asx/i\u{a}"))))
; Host\u{3a}\s+e2give\.com\s+NETObservemedia\u{2E}dxcdirect\u{2E}comSubject\u{3A}quick\u{2E}qsrch\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "e2give.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "NETObservemedia.dxcdirect.comSubject:quick.qsrch.com\u{a}"))))
; /^[^\u{0}][^\u{0}\u{1}]+$/
(assert (str.in_re X (re.++ (str.to_re "/") (re.comp (str.to_re "\u{0}")) (re.+ (re.union (str.to_re "\u{0}") (str.to_re "\u{1}"))) (str.to_re "/\u{a}"))))
; gpstool\u{2e}globaladserver\u{2e}comfriend_nickname=CIA-Notify-Tezt
(assert (not (str.in_re X (str.to_re "gpstool.globaladserver.comfriend_nickname=CIA-Notify-Tezt\u{a}"))))
(check-sat)
