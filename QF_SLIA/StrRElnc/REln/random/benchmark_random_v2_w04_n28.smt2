(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (re.union (re.+ (re.+ (str.to_re "496"))) (str.to_re "823")) (str.to_re "17"))))
(assert (str.in_re x (re.union (str.to_re "43") (re.++ (re.* (re.range "6" "9")) (re.range "6" "9")))))

(assert (<= (+ (* 4 (str.len x)) (* 9 (str.to_int x))) 8))
(assert (<= (+ (* 2 (str.len x)) (* (- 10) (str.len y))) 17))
(assert (> (+ (* (- 5) (str.to_int x)) (* (- 5) (str.to_int y))) 97))

(check-sat)