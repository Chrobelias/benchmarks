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

(assert (str.in_re x (re.union (str.to_re "96") (re.union (str.to_re "40") (re.++ (re.range "2" "7") (re.+ (re.range "3" "8")))))))
(assert (str.in_re y (re.* (re.* (re.++ (str.to_re "671") (str.to_re "54"))))))
(assert (str.in_re z (re.* (re.+ (re.+ (re.+ (str.to_re "81")))))))
(assert (str.in_re a (re.++ (re.union (str.to_re "744") (re.* (re.+ (str.to_re "14")))) (re.range "2" "8"))))
(assert (str.in_re b (re.++ (re.* (str.to_re "88")) (re.union (re.+ (str.to_re "366")) (str.to_re "526")))))

(assert (<= (+ (* (- 9) (str.len a)) (- (str.to_int x))) 7))
(assert (> (+ (* 4 (str.to_int x)) (* (- 4) (str.to_int a)) (* (- 2) (str.to_int b))) 42))
(assert (>= (+ (* 9 (str.to_int x)) (* (- 9) (str.to_int y)) (str.to_int z) (* (- 9) (str.to_int b))) 10))
(assert (< (+ (* (- 2) (str.len x)) (* 4 (str.to_int x))) 15))

(check-sat)