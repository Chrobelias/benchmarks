(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.+ (re.+ (re.+ (re.range "3" "7"))))))
(assert (str.in_re x (re.++ (re.+ (re.++ (str.to_re "5") (str.to_re "53"))) (str.to_re "786"))))

(assert (< (+ (* (- 6) (str.len x)) (* 9 (str.len y)) (* 10 (str.to_int x))) 27))
(assert (>= (+ (* 2 (str.len x)) (* 5 (str.len y))) 11))

(check-sat)