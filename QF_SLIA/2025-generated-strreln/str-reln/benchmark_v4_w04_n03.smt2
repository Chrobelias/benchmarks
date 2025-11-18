(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.union (re.++ (re.* (str.to_re "783")) (str.to_re "310")) (str.to_re "341"))))
(assert (str.in_re y (re.++ (re.* (re.++ (str.to_re "957") (str.to_re "705"))) (re.range "4" "7"))))
(assert (str.in_re z (re.* (re.++ (str.to_re "577") (re.range "4" "7")))))
(assert (str.in_re a (re.++ (re.* (re.union (str.to_re "41") (re.+ (re.range "5" "9")))) (str.to_re "0"))))

(assert (<= (+ (- (str.to_int x)) (str.to_int y) (* (- 4) (str.to_int z)) (* (- 7) (str.to_int a))) 40))
(assert (>= (+ (* 9 (str.len y)) (* (- 7) (str.len a)) (* (- 3) (str.to_int x)) (* (- 7) (str.to_int a))) 54))
(assert (> (+ (* 9 (str.to_int x)) (* (- 4) (str.to_int y)) (- (str.to_int z)) (* (- 9) (str.to_int a))) 34))

(check-sat)