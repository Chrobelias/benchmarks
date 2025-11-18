(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "632")) (str.to_re "8"))))
(assert (str.in_re y (re.+ (str.to_re "25"))))
(assert (str.in_re z (re.union (str.to_re "64") (re.++ (re.* (re.+ (str.to_re "66"))) (re.range "2" "7")))))
(assert (str.in_re a (re.union (re.+ (str.to_re "1")) (re.++ (re.+ (str.to_re "95")) (str.to_re "924")))))

(assert (>= (+ (* 7 (str.len x)) (str.len y) (* (- 8) (str.len a)) (* 3 (str.to_int x)) (* 6 (str.to_int y)) (* 10 (str.to_int z))) 84))
(assert (<= (+ (* (- 2) (str.to_int x)) (str.to_int y) (* 10 (str.to_int z)) (* 7 (str.to_int a))) 50))
(assert (= (+ (* (- 4) (str.len z)) (* 6 (str.to_int x))) 66))

(check-sat)