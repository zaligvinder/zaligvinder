(declare-const X String)
; v\u{3B}\d+more.*is\.htazmnjgmomgbdz\u{2f}zzmw\.gzt
(assert (str.in_re X (re.++ (str.to_re "v;") (re.+ (re.range "0" "9")) (str.to_re "more") (re.* re.allchar) (str.to_re "is.htazmnjgmomgbdz/zzmw.gzt\u{a}"))))
; /xsl\u{3A}template[^\u{3E}]*priority\s*\u{3D}[\s\u{22}\u{27}]*[\d\u{2D}]*[^\s\u{22}\u{27}\d\u{2d}]/smi
(assert (not (str.in_re X (re.++ (str.to_re "/xsl:template") (re.* (re.comp (str.to_re ">"))) (str.to_re "priority") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (re.range "0" "9") (str.to_re "-"))) (re.union (str.to_re "\u{22}") (str.to_re "'") (re.range "0" "9") (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/smi\u{a}")))))
; ^\$?\d{1,3}(,?\d{3})*(\.\d{1,2})?$
(assert (str.in_re X (re.++ (re.opt (str.to_re "$")) ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (re.opt (str.to_re ",")) ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)
