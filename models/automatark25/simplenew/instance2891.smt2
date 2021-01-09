(declare-const X String)
; <\?xml.*</note>
(assert (not (str.in.re X (re.++ (str.to.re "<?xml") (re.* re.allchar) (str.to.re "</note>\x0a")))))
(check-sat)
