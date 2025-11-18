(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 100))

(assert (str.in_re x (re.union (str.to_re "21") (re.+ (re.* (str.to_re "15"))))))
(assert (str.in_re y (re.union (str.to_re "238") (re.+ (str.to_re "5")))))
(assert (str.in_re z (re.union (re.+ (str.to_re "368")) (re.+ (str.to_re "90")))))

(assert (>= (+ (* (- 10) (str.len x)) (* (- 5) (str.len y)) (* 10 (str.len z)) (* (- 3) (str.to_int z))) 62))

(check-sat)