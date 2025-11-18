(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.union (re.+ (re.++ (str.to_re "4") (re.+ (str.to_re "36")))) (re.range "5" "8"))))
(assert (str.in_re y (re.++ (re.++ (re.+ (str.to_re "58")) (str.to_re "496")) (str.to_re "9"))))

(assert (> (+ (* (- 3) (str.len x)) (* 3 (str.len y))) 96))
(assert (< (+ (str.to_int x) (* 10 (str.to_int y))) 24))

(check-sat)