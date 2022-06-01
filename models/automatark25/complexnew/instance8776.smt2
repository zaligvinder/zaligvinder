(declare-const X String)
; /^Subject\u{3A}[^\r\n]*Trojaner-Info\sNewsletter/smi
(assert (not (str.in_re X (re.++ (str.to_re "/Subject:") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "Trojaner-Info") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Newsletter/smi\u{a}")))))
; /^\d{2}[\-\/]\d{2}[\-\/]\d{4}$/
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re "/")) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re "/")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "/\u{a}"))))
; ^\d{3}\s?\d{3}$
(assert (str.in_re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}"))))
; tid\u{3D}\u{7B}\s+Basic.*\u{2F}toolbar\u{2F}
(assert (not (str.in_re X (re.++ (str.to_re "tid={") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Basic") (re.* re.allchar) (str.to_re "/toolbar/\u{a}")))))
; Host\u{3A}\s+Online100013Agentsvr\u{5E}\u{5E}Merlin
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Online100013Agentsvr^^Merlin\u{13}\u{a}")))))
(check-sat)
