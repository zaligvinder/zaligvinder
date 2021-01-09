(declare-const X String)
; /\/[a-z0-9]{9}\.jnlp$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 9 9) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".jnlp/U\x0a")))))
; /filename=[^\n]*\x2epfm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pfm/i\x0a"))))
; isSAH\*Agentwww\.raxsearch\.comHost\x3A-~-\x22The
(assert (not (str.in.re X (str.to.re "isSAH*Agentwww.raxsearch.comHost:-~-\x22The\x0a"))))
(check-sat)
