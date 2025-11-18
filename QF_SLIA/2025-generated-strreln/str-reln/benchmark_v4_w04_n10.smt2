(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.union (re.++ (str.to_re "73") (str.to_re "260")) (re.* (str.to_re "415")))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "907") (re.union (str.to_re "44") (str.to_re "67"))))))
(assert (str.in_re z (re.* (re.++ (re.union (str.to_re "551") (str.to_re "6")) (str.to_re "93")))))
(assert (str.in_re a (re.++ (re.+ (str.to_re "159")) (re.+ (str.to_re "957")))))

(assert (>= (+ (str.len x) (* 8 (str.to_int a))) 34))
(assert (> (+ (* 3 (str.len x)) (* (- 4) (str.len y)) (* 10 (str.len z)) (* (- 10) (str.len a)) (* (- 9) (str.to_int a))) 86))

(check-sat)