(declare-const X String)
; <\?xml.*</note>
(assert (not (str.in_re X (re.++ (str.to_re "<?xml") (re.* re.allchar) (str.to_re "</note>\u{a}")))))
(check-sat)
