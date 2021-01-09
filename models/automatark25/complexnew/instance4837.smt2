(declare-const X String)
; isSAH\*Agentwww\.raxsearch\.comHost\x3A-~-\x22The
(assert (not (str.in.re X (str.to.re "isSAH*Agentwww.raxsearch.comHost:-~-\x22The\x0a"))))
; /\x2ef4v([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.f4v") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /<[A-Z]+\s+[^>]*?padding-left\x3A\x2D1000px\x3B[^>]*text-indent\x3A\x2D1000px/smi
(assert (not (str.in.re X (re.++ (str.to.re "/<") (re.+ (re.range "A" "Z")) (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.comp (str.to.re ">"))) (str.to.re "padding-left:-1000px;") (re.* (re.comp (str.to.re ">"))) (str.to.re "text-indent:-1000px/smi\x0a")))))
; /filename=[^\n]*\x2exml/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xml/i\x0a"))))
; \d{2}.?\d{3}.?\d{3}/?\d{4}-?\d{2}
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt re.allchar) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt re.allchar) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "/")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
