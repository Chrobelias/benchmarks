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

(assert (str.in_re x (re.+ (re.++ (re.* (re.* (str.to_re "69"))) (str.to_re "9")))))
(assert (str.in_re y (re.union (re.* (re.++ (str.to_re "9") (str.to_re "0"))) (re.range "7" "9"))))
(assert (str.in_re z (re.union (re.++ (str.to_re "26") (re.+ (str.to_re "427"))) (str.to_re "72"))))
(assert (str.in_re a (re.+ (str.to_re "764"))))
(assert (str.in_re b (re.+ (str.to_re "2"))))

(assert (> (+ (* 7 (str.len x)) (* (- 9) (str.len y)) (* (- 5) (str.len z)) (* (- 7) (str.len a)) (* 3 (str.len b))) 47))
(assert (<= (+ (* 2 (str.to_int x)) (str.to_int y) (* (- 3) (str.to_int a)) (* (- 5) (str.to_int b))) 41))
(assert (>= (+ (* 2 (str.len x)) (* (- 5) (str.len y)) (* (- 9) (str.len z)) (* (- 7) (str.len a)) (- (str.len b))) 25))

(check-sat)