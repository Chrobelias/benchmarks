(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (str.to_re "123") (re.++ (re.* (re.* (str.to_re "869"))) (str.to_re "5")))))
(assert (str.in_re y (re.+ (re.* (re.++ (re.range "1" "3") (re.+ (str.to_re "6")))))))

(assert (<= (+ (* (- 2) (str.to_int x)) (* 8 (str.to_int y))) 84))
(assert (> (+ (* 2 (str.len y)) (* 5 (str.to_int x))) 84))
(assert (>= (+ (* (- 4) (str.len x)) (* 6 (str.len y))) 92))

(check-sat)