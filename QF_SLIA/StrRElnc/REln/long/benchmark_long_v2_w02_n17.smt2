(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.* (re.union (str.to_re "2") (re.+ (re.* (str.to_re "6")))))))
(assert (str.in_re x (re.++ (re.union (re.union (re.+ (str.to_re "31")) (re.range "0" "8")) (str.to_re "828")) (str.to_re "8"))))

(assert (< (+ (* (- 2) (str.to_int x)) (* (- 6) (str.to_int y))) 70))
(assert (= (+ (* (- 3) (str.len x)) (str.len y)) 92))

(check-sat)