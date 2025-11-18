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

(assert (str.in_re x (re.+ (re.+ (re.++ (str.to_re "2") (str.to_re "157"))))))
(assert (str.in_re y (re.++ (str.to_re "524") (re.++ (re.* (str.to_re "82")) (re.range "7" "9")))))
(assert (str.in_re z (re.++ (re.union (re.+ (str.to_re "23")) (str.to_re "23")) (str.to_re "3"))))

(assert (> (+ (* (- 2) (str.len x)) (* 8 (str.len y)) (* (- 10) (str.len z))) 13))
(assert (> (+ (* 9 (str.to_int x)) (* (- 6) (str.to_int y)) (* 6 (str.to_int z))) 91))
(assert (>= (+ (* 10 (str.len x)) (* (- 3) (str.to_int y))) 0))
(assert (<= (+ (* (- 3) (str.len y)) (* (- 3) (str.len z)) (* 8 (str.to_int x)) (* (- 2) (str.to_int z))) 94))

(check-sat)