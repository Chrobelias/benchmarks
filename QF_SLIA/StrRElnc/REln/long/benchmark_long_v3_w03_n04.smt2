(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.* (str.to_re "29"))))
(assert (str.in_re y (re.++ (str.to_re "1") (re.* (re.union (str.to_re "51") (str.to_re "619"))))))
(assert (str.in_re z (re.++ (re.* (str.to_re "9")) (str.to_re "56"))))

(assert (> (+ (* (- 3) (str.to_int y)) (* (- 2) (str.to_int z))) 75))
(assert (<= (+ (* (- 7) (str.len y)) (* (- 7) (str.len z)) (* 4 (str.to_int y))) 26))

(check-sat)