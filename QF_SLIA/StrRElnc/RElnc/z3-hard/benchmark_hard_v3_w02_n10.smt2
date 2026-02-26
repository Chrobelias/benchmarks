(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= x (str.++ "25" z "78" y)))

(assert (str.in_re z (re.union (re.+ (re.union (str.to_re "658") (str.to_re "859"))) (str.to_re "318"))))
(assert (str.in_re x (re.* (re.union (re.range "2" "8") (re.union (str.to_re "88") (str.to_re "9"))))))
(assert (str.in_re y (re.union (str.to_re "94") (re.+ (str.to_re "1")))))

(assert (> (+ (* (- 3) (str.to_int x)) (* (- 2) (str.to_int y)) (* 6 (str.to_int z))) 31))
(assert (< (+ (* (- 3) (str.len x)) (* (- 6) (str.len z))) 53))

(check-sat)