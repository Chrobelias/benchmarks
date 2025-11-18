(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.* (re.union (re.* (str.to_re "5")) (str.to_re "91")))))
(assert (str.in_re y (re.union (re.+ (re.+ (str.to_re "76"))) (str.to_re "96"))))
(assert (str.in_re z (re.union (re.* (str.to_re "953")) (re.union (re.* (str.to_re "97")) (re.range "0" "4")))))
(assert (str.in_re a (re.+ (re.++ (re.* (str.to_re "29")) (str.to_re "534")))))

(assert (= (+ (* (- 4) (str.to_int x)) (* 8 (str.to_int y)) (* 6 (str.to_int z)) (* (- 9) (str.to_int a))) 47))
(assert (>= (+ (* (- 6) (str.len a)) (* 7 (str.to_int x)) (* (- 4) (str.to_int y))) 17))
(assert (< (+ (* (- 8) (str.to_int x)) (- (str.to_int y)) (str.to_int z) (* 9 (str.to_int a))) 28))

(check-sat)