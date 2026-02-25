(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "69")))

(assert (str.in_re x (re.* (str.to_re "439"))))
(assert (str.in_re y (re.union (str.to_re "429") (re.+ (re.union (re.+ (re.range "0" "9")) (str.to_re "24"))))))

(assert (= (+ (* (- 4) (str.len x)) (* 6 (str.to_int x))) 20))

(check-sat)