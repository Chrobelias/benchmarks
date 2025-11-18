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

(assert (str.in_re x (re.* (re.* (re.++ (str.to_re "85") (re.range "0" "9"))))))
(assert (str.in_re y (re.+ (re.range "3" "7"))))
(assert (str.in_re z (re.++ (str.to_re "478") (re.* (str.to_re "51")))))
(assert (str.in_re a (re.union (re.* (re.* (re.* (str.to_re "19")))) (str.to_re "62"))))
(assert (str.in_re b (re.++ (re.* (re.union (re.+ (str.to_re "3")) (str.to_re "68"))) (str.to_re "19"))))

(assert (>= (+ (* 6 (str.len x)) (* (- 5) (str.len y)) (- (str.len z)) (* (- 4) (str.len a)) (* (- 5) (str.len b))) 37))
(assert (<= (+ (* 3 (str.to_int x)) (* 4 (str.to_int y)) (* (- 2) (str.to_int z)) (* 3 (str.to_int a)) (* (- 5) (str.to_int b))) 7))
(assert (> (+ (str.to_int x) (* 2 (str.to_int y)) (* 5 (str.to_int z)) (* (- 6) (str.to_int a)) (* 9 (str.to_int b))) 26))
(assert (>= (+ (* (- 9) (str.len x)) (* 7 (str.to_int x)) (str.to_int y) (* 5 (str.to_int z))) 95))

(check-sat)