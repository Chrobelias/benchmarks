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

(assert (str.in_re x (re.++ (re.+ (re.+ (re.range "5" "8"))) (str.to_re "897"))))
(assert (str.in_re y (re.* (re.union (re.++ (str.to_re "44") (re.range "2" "9")) (str.to_re "432")))))
(assert (str.in_re z (re.union (re.+ (str.to_re "280")) (re.+ (str.to_re "766")))))
(assert (str.in_re a (re.+ (re.* (re.++ (re.+ (str.to_re "0")) (str.to_re "27"))))))
(assert (str.in_re b (re.* (re.+ (str.to_re "212")))))

(assert (= (+ (* 9 (str.to_int x)) (* (- 7) (str.to_int y)) (* (- 10) (str.to_int z)) (- (str.to_int a)) (* (- 10) (str.to_int b))) 29))
(assert (> (+ (* 3 (str.to_int x)) (* 8 (str.to_int y)) (* 4 (str.to_int z)) (* 4 (str.to_int a)) (* (- 10) (str.to_int b))) 12))
(assert (<= (+ (* 8 (str.len x)) (* (- 2) (str.to_int b))) 95))
(assert (= (+ (* 9 (str.len x)) (* 8 (str.len y)) (* (- 7) (str.len z)) (* (- 2) (str.len a)) (* (- 10) (str.len b))) 39))

(check-sat)