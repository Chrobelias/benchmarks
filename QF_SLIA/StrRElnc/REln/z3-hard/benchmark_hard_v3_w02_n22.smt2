(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.* (re.* (re.union (str.to_re "647") (str.to_re "648"))))))
(assert (str.in_re y (re.* (str.to_re "422"))))
(assert (str.in_re x (re.* (re.++ (re.++ (str.to_re "0") (str.to_re "51")) (str.to_re "1")))))

(assert (>= (+ (* (- 5) (str.len y)) (* 4 (str.len z)) (* (- 6) (str.to_int z))) 91))

(check-sat)