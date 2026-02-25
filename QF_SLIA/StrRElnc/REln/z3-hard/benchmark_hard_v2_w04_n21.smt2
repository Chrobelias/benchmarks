(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (re.union (re.+ (str.to_re "207")) (re.+ (re.range "1" "9"))) (str.to_re "393"))))
(assert (str.in_re x (re.++ (re.++ (str.to_re "20") (str.to_re "28")) (re.+ (str.to_re "803")))))

(assert (<= (+ (* (- 9) (str.len x)) (* (- 10) (str.len y)) (* 2 (str.to_int x))) 1))
(assert (< (+ (* 4 (str.len y)) (* (- 5) (str.to_int y))) 99))

(check-sat)