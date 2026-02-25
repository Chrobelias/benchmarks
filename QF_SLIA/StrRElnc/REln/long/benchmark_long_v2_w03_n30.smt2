(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.* (re.* (re.union (str.to_re "36") (re.range "2" "9"))))))
(assert (str.in_re x (re.++ (re.+ (str.to_re "477")) (re.union (str.to_re "3") (str.to_re "28")))))

(assert (>= (+ (* 3 (str.len y)) (* (- 8) (str.to_int x))) 2))
(assert (= (+ (* (- 3) (str.len x)) (* (- 4) (str.len y))) 39))

(check-sat)