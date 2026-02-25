(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= y (str.++ "72" x)))

(assert (str.in_re y (re.+ (re.range "2" "9"))))
(assert (str.in_re x (re.++ (re.+ (re.++ (re.range "0" "7") (str.to_re "845"))) (re.range "6" "8"))))

(assert (> (+ (* (- 3) (str.len y)) (* 8 (str.to_int y))) 50))
(assert (= (+ (* 10 (str.to_int x)) (- (str.to_int y))) 98))

(check-sat)