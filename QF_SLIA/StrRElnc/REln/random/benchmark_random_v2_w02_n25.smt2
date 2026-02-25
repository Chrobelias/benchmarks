(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (re.* (str.to_re "651")) (re.union (str.to_re "27") (str.to_re "92")))))
(assert (str.in_re x (re.+ (re.++ (str.to_re "378") (str.to_re "69")))))

(assert (= (+ (* (- 2) (str.len x)) (* (- 10) (str.len y)) (* 4 (str.to_int y))) 5))

(check-sat)