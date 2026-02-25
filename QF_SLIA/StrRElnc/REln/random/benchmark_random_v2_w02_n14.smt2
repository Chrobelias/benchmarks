(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.+ (re.range "5" "8"))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "6") (re.++ (str.to_re "855") (str.to_re "58"))))))

(assert (> (* 6 (str.len y)) 40))
(assert (< (+ (* 10 (str.to_int x)) (* 2 (str.to_int y))) 8))

(check-sat)