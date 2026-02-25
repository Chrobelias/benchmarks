(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.union (str.to_re "74") (re.* (str.to_re "3")))))
(assert (str.in_re z (re.union (re.++ (str.to_re "440") (re.++ (re.range "7" "9") (re.+ (str.to_re "99")))) (str.to_re "3"))))
(assert (str.in_re x (re.+ (re.++ (re.+ (str.to_re "901")) (str.to_re "698")))))

(assert (<= (+ (* (- 2) (str.len x)) (* (- 6) (str.len y)) (str.len z)) 3))
(assert (< (+ (* (- 6) (str.to_int x)) (* (- 6) (str.to_int y)) (* 5 (str.to_int z))) 6))

(check-sat)