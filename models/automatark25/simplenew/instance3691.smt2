(declare-const X String)
; /pdf\.php\?pdf=[0-9A-F]+&type=\d+&o=[^&]+&b=/U
(assert (str.in_re X (re.++ (str.to_re "/pdf.php?pdf=") (re.+ (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re "&type=") (re.+ (re.range "0" "9")) (str.to_re "&o=") (re.+ (re.comp (str.to_re "&"))) (str.to_re "&b=/U\u{a}"))))
(check-sat)
