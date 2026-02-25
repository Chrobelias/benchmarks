(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.++ (re.* (re.range "5" "8")) (re.++ (str.to_re "27") (re.* (str.to_re "405"))))))
(assert (str.in_re y (re.* (str.to_re "14"))))
(assert (str.in_re z (re.++ (re.+ (re.+ (re.range "5" "9"))) (re.* (str.to_re "102")))))

(assert (>= (+ (* (- 2) (str.len x)) (* (- 8) (str.len z)) (* (- 5) (str.to_int x)) (* 6 (str.to_int y))) 78))

(check-sat)