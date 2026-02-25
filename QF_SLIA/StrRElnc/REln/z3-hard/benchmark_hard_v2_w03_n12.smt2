(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (re.+ (str.to_re "364")) (re.+ (str.to_re "229")))))
(assert (str.in_re x (re.++ (str.to_re "59") (re.+ (re.range "4" "7")))))

(assert (>= (+ (* (- 2) (str.len x)) (* 8 (str.len y)) (* (- 5) (str.to_int y))) 3))
(assert (= (+ (* (- 3) (str.len x)) (* 5 (str.len y))) 35))

(check-sat)