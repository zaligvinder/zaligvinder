(declare-const X String)
; ^[^\u{0}-\u{1f}\u{21}-\u{26}\u{28}-\u{2d}\u{2f}-\u{40}\u{5b}-\u{60}\u{7b}-\u{ff}]+$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "\u{0}" "\u{1f}") (re.range "!" "&") (re.range "(" "-") (re.range "/" "@") (re.range "[" "`") (re.range "{" "\u{ff}"))) (str.to_re "\u{a}")))))
; /filename=[^\n]*\u{2e}addin/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".addin/i\u{a}"))))
; ^([a-zA-Z0-9]{6,18}?)$
(assert (str.in_re X (re.++ ((_ re.loop 6 18) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}"))))
; /<[A-Z]+\s+[^>]*?padding-left\u{3A}\u{2D}1000px\u{3B}[^>]*text-indent\u{3A}\u{2D}1000px/smi
(assert (str.in_re X (re.++ (str.to_re "/<") (re.+ (re.range "A" "Z")) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.comp (str.to_re ">"))) (str.to_re "padding-left:-1000px;") (re.* (re.comp (str.to_re ">"))) (str.to_re "text-indent:-1000px/smi\u{a}"))))
; xmlpage=Host\u{3A}\u{2E}htmlUser-Agent\u{3A}bindmqnqgijmng\u{2f}ojMirar_KeywordContent
(assert (str.in_re X (str.to_re "xmlpage=Host:.htmlUser-Agent:bindmqnqgijmng/ojMirar_KeywordContent\u{13}\u{a}")))
(check-sat)
