(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (re.* (re.range "0" "6")) (str.to_re "564"))))
(assert (str.in_re x (re.++ (str.to_re "965") (re.+ (re.+ (str.to_re "80"))))))

(assert (>= (+ (* (- 6) (str.to_int x)) (* (- 5) (str.to_int y))) 11))
(assert (> (+ (* 10 (str.len x)) (* 10 (str.len y))) 78))
(assert (= (+ (* 6 (str.to_int x)) (* 5 (str.to_int y))) 39))

(check-sat)