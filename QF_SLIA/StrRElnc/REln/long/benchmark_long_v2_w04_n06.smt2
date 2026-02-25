(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.* (re.+ (str.to_re "0")))))
(assert (str.in_re y (re.union (re.union (re.* (str.to_re "121")) (re.range "1" "7")) (re.* (str.to_re "26")))))

(assert (= (+ (* 3 (str.len x)) (* (- 5) (str.to_int x))) 98))
(assert (>= (+ (* (- 2) (str.len x)) (* (- 2) (str.len y)) (* 6 (str.to_int x))) 27))

(check-sat)