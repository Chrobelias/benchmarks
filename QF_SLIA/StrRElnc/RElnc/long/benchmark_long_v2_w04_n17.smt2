(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= x (str.++ "44" y)))

(assert (str.in_re y (re.++ (re.* (re.++ (str.to_re "68") (str.to_re "6"))) (str.to_re "32"))))
(assert (str.in_re x (re.+ (re.union (re.range "1" "9") (str.to_re "420")))))

(assert (<= (+ (* 10 (str.to_int x)) (* (- 7) (str.to_int y))) 10))
(assert (> (+ (* 2 (str.len x)) (* (- 5) (str.to_int x))) 52))
(assert (> (+ (* 10 (str.len x)) (* 6 (str.len y))) 84))

(check-sat)