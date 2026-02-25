(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "9") (re.* (str.to_re "43"))))))
(assert (str.in_re y (re.+ (re.+ (re.union (re.range "2" "7") (str.to_re "28"))))))

(assert (> (+ (* 4 (str.len y)) (* (- 3) (str.to_int x)) (* (- 8) (str.to_int y))) 69))
(assert (<= (+ (* (- 5) (str.len y)) (* 4 (str.to_int y))) 83))

(check-sat)