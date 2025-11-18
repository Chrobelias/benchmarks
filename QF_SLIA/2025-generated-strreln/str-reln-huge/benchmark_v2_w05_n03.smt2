(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.* (re.++ (str.to_re "445") (re.++ (str.to_re "407") (str.to_re "0"))))))
(assert (str.in_re y (re.* (re.union (str.to_re "26") (str.to_re "24")))))

(assert (> (+ (* (- 4) (str.len x)) (* 8 (str.to_int x))) 41))
(assert (< (+ (* 3 (str.len x)) (* (- 4) (str.len y)) (* 5 (str.to_int x))) 71))
(assert (>= (+ (* 4 (str.len x)) (* 4 (str.len y))) 50))

(check-sat)