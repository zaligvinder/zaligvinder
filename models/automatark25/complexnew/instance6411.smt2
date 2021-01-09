(declare-const X String)
; ^M{0,1}T{0,1}W{0,1}(TH){0,1}F{0,1}S{0,1}(SU){0,1}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "M")) (re.opt (str.to.re "T")) (re.opt (str.to.re "W")) (re.opt (str.to.re "TH")) (re.opt (str.to.re "F")) (re.opt (str.to.re "S")) (re.opt (str.to.re "SU")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2em4a/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4a/i\x0a"))))
; ^[a-zA-Z]\:\\.*|^\\\\.*
(assert (str.in.re X (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":\x5c") (re.* re.allchar)) (re.++ (str.to.re "\x5c\x5c") (re.* re.allchar) (str.to.re "\x0a")))))
; \x2Fbar_pl\x2Fshdoclc\.fcgisource%3Dultrasearch136%26campaign%3DsnapEIHBand,
(assert (not (str.in.re X (str.to.re "/bar_pl/shdoclc.fcgisource%3Dultrasearch136%26campaign%3DsnapEIHBand,\x0a"))))
(check-sat)
