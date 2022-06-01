(declare-const X String)
; MicrosoftHost\u{3A}Subject\u{3a}namedDownloadUser-Agent\u{3a}
(assert (not (str.in_re X (str.to_re "MicrosoftHost:Subject:namedDownloadUser-Agent:\u{a}"))))
; /appendChild\u{28}\s*document\u{2e}createElement\u{28}\s*[\u{22}\u{27}]button[\u{22}\u{27}].*?outerText\s*=\s*[\u{22}\u{27}]{2}/smi
(assert (str.in_re X (re.++ (str.to_re "/appendChild(") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "document.createElement(") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re "button") (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.* re.allchar) (str.to_re "outerText") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 2) (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "/smi\u{a}"))))
; IDENTIFY666User-Agent\u{3A}\u{5B}StaticSend=Host\u{3A}www\.iggsey\.com
(assert (str.in_re X (str.to_re "IDENTIFY666User-Agent:[StaticSend=Host:www.iggsey.com\u{a}")))
; ^(.|\r|\n){1,10}$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 10) (re.union re.allchar (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "\u{a}")))))
(check-sat)
