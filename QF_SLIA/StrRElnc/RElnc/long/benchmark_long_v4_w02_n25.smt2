(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len a) 1000))
(assert (>= (str.len y) 1000))

(assert (= (str.++ x a) (str.++ z "68" y "48")))

(assert (str.in_re x (re.+ (re.++ (str.to_re "16") (str.to_re "11")))))
(assert (str.in_re a (re.++ (re.union (re.* (str.to_re "354")) (str.to_re "491")) (re.range "2" "4"))))
(assert (str.in_re z (re.+ (str.to_re "543"))))
(assert (str.in_re y (re.++ (re.++ (re.+ (re.+ (str.to_re "42"))) (str.to_re "764")) (str.to_re "2"))))

(assert (<= (+ (* 4 (str.to_int x)) (* (- 3) (str.to_int y)) (* 10 (str.to_int z)) (* 4 (str.to_int a))) 75))
(assert (>= (+ (* 5 (str.len x)) (* 4 (str.len y)) (* 7 (str.len a))) 19))

(check-sat)