(declare-const X String)
; /filename=[^\n]*\u{2e}lnk/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".lnk/i\u{a}")))))
; \.icosearch\u{2e}conduit\u{2e}com\u{3C}logs\u{40}logs\u{2E}com\u{3E}
(assert (not (str.in_re X (str.to_re ".icosearch.conduit.com<logs@logs.com>\u{a}"))))
; /filename=[^\n]*\u{2e}addin/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".addin/i\u{a}")))))
; /filename=[^\n]*\u{2e}smi/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".smi/i\u{a}")))))
(check-sat)
