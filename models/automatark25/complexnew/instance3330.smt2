(declare-const X String)
; A + B
(assert (str.in_re X (re.++ (str.to_re "A") (re.+ (str.to_re " ")) (str.to_re " B\u{a}"))))
; /filename=[^\n]*\u{2e}skm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".skm/i\u{a}"))))
; Download\d+ocllceclbhs\u{2f}gth
(assert (str.in_re X (re.++ (str.to_re "Download") (re.+ (re.range "0" "9")) (str.to_re "ocllceclbhs/gth\u{a}"))))
(check-sat)
