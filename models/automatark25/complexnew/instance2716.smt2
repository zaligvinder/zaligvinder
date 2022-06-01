(declare-const X String)
; cdpView.*protocol.*\u{2F}s\u{28}robert\u{40}blackcastlesoft\u{2E}com\u{29}
(assert (str.in_re X (re.++ (str.to_re "cdpView") (re.* re.allchar) (str.to_re "protocol") (re.* re.allchar) (str.to_re "/s(robert@blackcastlesoft.com)\u{a}"))))
; pjpoptwql\u{2f}rlnj\sPG=SPEEDBARadblock\u{2E}linkz\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "pjpoptwql/rlnj") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "PG=SPEEDBARadblock.linkz.com\u{a}")))))
; ^([1-9]|1[0-2]):[0-5]\d ?(a|A|p|P)(m|M)$
(assert (not (str.in_re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9") (re.opt (str.to_re " ")) (re.union (str.to_re "a") (str.to_re "A") (str.to_re "p") (str.to_re "P")) (re.union (str.to_re "m") (str.to_re "M")) (str.to_re "\u{a}")))))
; /pdf\.php\?pdf=[0-9A-F]+&type=\d+&o=[^&]+&b=/U
(assert (not (str.in_re X (re.++ (str.to_re "/pdf.php?pdf=") (re.+ (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re "&type=") (re.+ (re.range "0" "9")) (str.to_re "&o=") (re.+ (re.comp (str.to_re "&"))) (str.to_re "&b=/U\u{a}")))))
(check-sat)
