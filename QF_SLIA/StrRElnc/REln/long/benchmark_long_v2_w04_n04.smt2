(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.union (re.* (str.to_re "33")) (re.++ (str.to_re "26") (str.to_re "796")))))
(assert (str.in_re x (re.* (re.* (re.* (re.+ (str.to_re "0")))))))

(assert (= (+ (* (- 7) (str.len x)) (* 8 (str.to_int x))) 46))
(assert (> (+ (* (- 2) (str.len x)) (* (- 5) (str.len y))) 8))
(assert (> (+ (* 4 (str.len x)) (* (- 5) (str.len y))) 98))

(check-sat)