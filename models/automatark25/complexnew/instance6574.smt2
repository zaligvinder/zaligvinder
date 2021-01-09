(declare-const X String)
; myway\.com\s+SupervisorPalUser-Agent\x3ASearch
(assert (str.in.re X (re.++ (str.to.re "myway.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SupervisorPalUser-Agent:Search\x0a"))))
; /^Subject\x3A[^\r\n]*Trojaner-Info\sNewsletter/smi
(assert (str.in.re X (re.++ (str.to.re "/Subject:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "Trojaner-Info") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Newsletter/smi\x0a"))))
; /xsl\x3Atemplate[^\x3E]*priority\s*\x3D[\s\x22\x27]*[\d\x2D]*[^\s\x22\x27\d\x2d]/smi
(assert (not (str.in.re X (re.++ (str.to.re "/xsl:template") (re.* (re.comp (str.to.re ">"))) (str.to.re "priority") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (re.range "0" "9") (str.to.re "-"))) (re.union (str.to.re "\x22") (str.to.re "'") (re.range "0" "9") (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/smi\x0a")))))
(check-sat)
