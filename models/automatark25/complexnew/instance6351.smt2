(declare-const X String)
; ("[^"]*")|('[^\r]*)(\r\n)?
(assert (str.in_re X (re.union (re.++ (str.to_re "\u{22}") (re.* (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}")) (re.++ (re.opt (str.to_re "\u{d}\u{a}")) (str.to_re "\u{a}'") (re.* (re.comp (str.to_re "\u{d}")))))))
; MyPostsearch\u{2e}conduit\u{2e}comUser-Agent\u{3A}AcmeSubject\u{3A}ready\.\r\n
(assert (not (str.in_re X (str.to_re "MyPostsearch.conduit.comUser-Agent:AcmeSubject:ready.\u{d}\u{a}\u{a}"))))
(check-sat)
