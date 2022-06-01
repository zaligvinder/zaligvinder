(declare-const X String)
; dist\u{2E}atlas\u{2D}ia\u{2E}comSpy\-LockedOnlineconnection
(assert (str.in_re X (str.to_re "dist.atlas-ia.comSpy-LockedOnlineconnection\u{a}")))
; /\u{2e}mkv([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.mkv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /filename=[^\n]*\u{2e}gif/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".gif/i\u{a}"))))
(check-sat)
