(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.union (re.+ (re.+ (str.to_re "629"))) (str.to_re "79")) (str.to_re "59"))))
(assert (str.in_re y (re.union (re.range "3" "7") (re.++ (str.to_re "22") (re.* (re.range "0" "7"))))))
(assert (str.in_re z (re.+ (str.to_re "1"))))
(assert (str.in_re a (re.* (re.+ (re.+ (str.to_re "7"))))))

(assert (>= (+ (* (- 5) (str.to_int x)) (* 8 (str.to_int y)) (* 2 (str.to_int a))) 49))
(assert (<= (+ (* 3 (str.to_int x)) (* 5 (str.to_int y)) (* (- 5) (str.to_int z)) (* (- 4) (str.to_int a))) 39))
(assert (<= (+ (* 8 (str.len x)) (* 3 (str.len z)) (- (str.len a)) (* (- 3) (str.to_int y))) 5))
(assert (<= (+ (* (- 3) (str.to_int y)) (* 7 (str.to_int z)) (* 3 (str.to_int a))) 38))
(assert (<= (+ (* (- 3) (str.to_int x)) (* (- 7) (str.to_int y)) (* (- 10) (str.to_int z)) (* 10 (str.to_int a))) 61))

(check-sat)