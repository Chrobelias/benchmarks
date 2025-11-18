(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.+ (str.to_re "595"))))
(assert (str.in_re y (re.+ (re.union (re.++ (re.* (re.range "7" "9")) (str.to_re "25")) (str.to_re "677")))))

(assert (<= (+ (* 6 (str.len x)) (* (- 9) (str.len y))) 8))
(assert (> (+ (* 8 (str.len x)) (* (- 4) (str.to_int x))) 8))

(check-sat)