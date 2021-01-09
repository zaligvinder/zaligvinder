(declare-const X String)
; /(XBOX|Nintendo Wii|smarttv|playstation|hbbtv|philipstv|opera tv|inettv)/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "XBOX") (str.to.re "Nintendo Wii") (str.to.re "smarttv") (str.to.re "playstation") (str.to.re "hbbtv") (str.to.re "philipstv") (str.to.re "opera tv") (str.to.re "inettv")) (str.to.re "/\x0a")))))
(check-sat)
