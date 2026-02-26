(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= y (str.++ z "84" x a "37")))

(assert (str.in_re y (re.* (re.union (re.* (str.to_re "920")) (re.range "1" "9")))))
(assert (str.in_re z (re.union (re.++ (re.* (re.range "7" "9")) (str.to_re "14")) (re.* (str.to_re "792")))))
(assert (str.in_re a (re.union (str.to_re "97") (re.+ (str.to_re "8")))))
(assert (str.in_re x (re.++ (re.union (re.+ (re.+ (str.to_re "25"))) (str.to_re "113")) (str.to_re "229"))))

(assert (<= (+ (- (str.len x)) (* (- 9) (str.len y)) (* 2 (str.len z)) (* (- 4) (str.len a))) 91))
(assert (> (+ (* (- 6) (str.to_int x)) (* (- 2) (str.to_int y)) (* 5 (str.to_int z)) (* (- 9) (str.to_int a))) 40))

(check-sat)