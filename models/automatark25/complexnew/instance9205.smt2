(declare-const X String)
; User-Agent\u{3A}Host\u{3A}hasHost\u{3A}ComputerKeylogger\u{2E}com
(assert (not (str.in_re X (str.to_re "User-Agent:Host:hasHost:ComputerKeylogger.com\u{a}"))))
; ^\d{5}-\d{4}$
(assert (not (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; X-Mailer\u{3a}+Host\u{3A}\u{2E}aspxHost\u{3A}v=User-Agent\u{3a}xbqyosoe\u{2f}cpvmRequestwww\u{2E}altnet\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "X-Mailer") (re.+ (str.to_re ":")) (str.to_re "Host:.aspxHost:v=User-Agent:xbqyosoe/cpvmRequestwww.altnet.com\u{1b}\u{a}")))))
; \S*?[\["].*?[\]"]|\S+
(assert (str.in_re X (re.union (re.++ (re.* (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (re.union (str.to_re "[") (str.to_re "\u{22}")) (re.* re.allchar) (re.union (str.to_re "]") (str.to_re "\u{22}"))) (re.++ (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (str.to_re "\u{a}")))))
; NETObserveSupervisorHost\u{3A}websearch\u{2E}drsnsrch\u{2E}com
(assert (not (str.in_re X (str.to_re "NETObserveSupervisorHost:websearch.drsnsrch.com\u{13}\u{a}"))))
(check-sat)
