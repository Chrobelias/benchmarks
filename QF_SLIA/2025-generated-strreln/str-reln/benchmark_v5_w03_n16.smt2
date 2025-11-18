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

(assert (str.in_re x (re.union (re.++ (str.to_re "452") (re.union (re.+ (str.to_re "84")) (str.to_re "4"))) (str.to_re "669"))))
(assert (str.in_re y (re.union (str.to_re "379") (re.++ (re.* (str.to_re "26")) (str.to_re "6")))))
(assert (str.in_re z (re.union (re.* (str.to_re "58")) (re.++ (re.* (str.to_re "21")) (str.to_re "3")))))
(assert (str.in_re a (re.* (re.* (re.union (str.to_re "364") (str.to_re "359"))))))
(assert (str.in_re b (re.+ (re.* (re.++ (str.to_re "1") (str.to_re "2"))))))

(assert (>= (+ (* 4 (str.len x)) (* (- 3) (str.len y)) (* (- 7) (str.len z)) (* (- 6) (str.len a)) (* 9 (str.len b))) 74))
(assert (>= (+ (* (- 4) (str.len x)) (- (str.len y)) (* 3 (str.len z)) (* 5 (str.len a)) (* 8 (str.len b))) 51))
(assert (>= (+ (str.to_int x) (* 9 (str.to_int y)) (* 10 (str.to_int z)) (* 9 (str.to_int a)) (* (- 7) (str.to_int b))) 89))

(check-sat)