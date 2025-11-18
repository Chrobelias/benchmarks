(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.+ (re.union (re.range "7" "9") (re.+ (re.range "3" "6"))))))
(assert (str.in_re y (re.union (re.union (str.to_re "793") (re.* (str.to_re "972"))) (re.+ (str.to_re "936")))))
(assert (str.in_re z (re.union (re.range "6" "8") (re.+ (re.+ (re.range "5" "7"))))))
(assert (str.in_re a (re.++ (re.union (re.+ (re.range "1" "9")) (str.to_re "173")) (str.to_re "84"))))
(assert (str.in_re b (re.union (re.++ (re.+ (str.to_re "79")) (str.to_re "255")) (re.range "0" "2"))))

(assert (< (+ (* (- 3) (str.len x)) (* (- 9) (str.len y)) (* 10 (str.len z)) (* (- 9) (str.len b))) 41))
(assert (= (+ (* (- 5) (str.to_int x)) (* (- 2) (str.to_int y)) (* 10 (str.to_int z)) (* 4 (str.to_int a)) (* 7 (str.to_int b))) 52))
(assert (>= (+ (str.len x) (* (- 9) (str.len y)) (* (- 7) (str.len z)) (* 3 (str.len a)) (- (str.len b))) 77))
(assert (<= (+ (* (- 5) (str.to_int x)) (* 7 (str.to_int y)) (- (str.to_int z)) (* (- 3) (str.to_int a)) (* (- 9) (str.to_int b))) 97))
(assert (> (+ (* (- 2) (str.len x)) (* 9 (str.len y)) (* (- 4) (str.len z)) (* (- 7) (str.len a)) (* 3 (str.len b))) 61))

(check-sat)