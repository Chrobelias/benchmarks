(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (re.++ (re.range "4" "9") (re.+ (str.to_re "9"))) (str.to_re "5"))))
(assert (str.in_re x (re.* (re.++ (str.to_re "145") (re.* (re.range "3" "9"))))))

(assert (= (+ (* 4 (str.len y)) (* (- 5) (str.to_int y))) 36))

(check-sat)