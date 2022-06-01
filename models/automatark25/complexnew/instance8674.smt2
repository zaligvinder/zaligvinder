(declare-const X String)
; zzzvmkituktgr\u{2f}etie\s+WindowsAttachedPalas\u{2E}starware\u{2E}com\u{2F}dp\u{2F}search\?x=
(assert (str.in_re X (re.++ (str.to_re "zzzvmkituktgr/etie") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "WindowsAttachedPalas.starware.com/dp/search?x=\u{a}"))))
; /(\d*\.?\d+)\s?(px|em|ex|%|in|cn|mm|pt|pc+)/igm
(assert (str.in_re X (re.++ (str.to_re "/") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "px") (str.to_re "em") (str.to_re "ex") (str.to_re "%") (str.to_re "in") (str.to_re "cn") (str.to_re "mm") (str.to_re "pt") (re.++ (str.to_re "p") (re.+ (str.to_re "c")))) (str.to_re "/igm\u{a}") (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.+ (re.range "0" "9")))))
; ^-?\d+(\.\d+)?$
(assert (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)
