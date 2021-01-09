(declare-const X String)
; /xsl\x3Atemplate[^\x3E]*priority\s*\x3D[\s\x22\x27]*[\d\x2D]*[^\s\x22\x27\d\x2d]/smi
(assert (not (str.in.re X (re.++ (str.to.re "/xsl:template") (re.* (re.comp (str.to.re ">"))) (str.to.re "priority") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (re.range "0" "9") (str.to.re "-"))) (re.union (str.to.re "\x22") (str.to.re "'") (re.range "0" "9") (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/smi\x0a")))))
; (^[a-zA-Z][a-zA-Z0-9_]*)|(^[_][a-zA-Z0-9_]+)
(assert (str.in.re X (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_")))) (re.++ (str.to.re "\x0a_") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_")))))))
; Host\x3A.*rt[^\n\r]*Host\x3AUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "rt") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:User-Agent:\x0a")))))
(check-sat)
