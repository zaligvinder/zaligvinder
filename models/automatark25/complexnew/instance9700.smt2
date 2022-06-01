(declare-const X String)
; www\u{2e}urlblaze\u{2e}netCurrentHost\u{3A}
(assert (str.in_re X (str.to_re "www.urlblaze.netCurrentHost:\u{a}")))
; /filename=[^\n]*\u{2e}mppl/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mppl/i\u{a}")))))
; /^SpyBuddy\s+Activity\s+Logs/smi
(assert (str.in_re X (re.++ (str.to_re "/SpyBuddy") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Activity") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Logs/smi\u{a}"))))
; ^\\w*$
(assert (str.in_re X (re.++ (str.to_re "\u{5c}") (re.* (str.to_re "w")) (str.to_re "\u{a}"))))
; /^.{9}[^\u{3}\u{a}\u{11}\u{10}]/R
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 9 9) re.allchar) (re.union (str.to_re "\u{3}") (str.to_re "\u{a}") (str.to_re "\u{11}") (str.to_re "\u{10}")) (str.to_re "/R\u{a}")))))
(check-sat)
