(declare-const X String)
; /\u{2e}jnlp([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.jnlp") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /^SpyBuddy\s+Activity\s+Logs/smi
(assert (str.in_re X (re.++ (str.to_re "/SpyBuddy") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Activity") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Logs/smi\u{a}"))))
; libManager\u{2E}dll\u{5E}get
(assert (not (str.in_re X (str.to_re "libManager.dll^get\u{a}"))))
; www\u{2E}purityscan\u{2E}com\s+from\.myway\.comToolbarUI2
(assert (str.in_re X (re.++ (str.to_re "www.purityscan.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "from.myway.com\u{1b}ToolbarUI2\u{a}"))))
; (^\d{9}[V|v|x|X]$)
(assert (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 9 9) (re.range "0" "9")) (re.union (str.to_re "V") (str.to_re "|") (str.to_re "v") (str.to_re "x") (str.to_re "X")))))
(check-sat)
