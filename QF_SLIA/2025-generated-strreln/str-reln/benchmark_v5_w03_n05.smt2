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

(assert (str.in_re x (re.++ (re.union (re.+ (str.to_re "482")) (str.to_re "8")) (str.to_re "122"))))
(assert (str.in_re y (re.union (str.to_re "850") (re.++ (str.to_re "75") (re.* (str.to_re "7"))))))
(assert (str.in_re z (re.++ (str.to_re "8") (re.+ (str.to_re "528")))))
(assert (str.in_re a (re.+ (re.+ (re.* (re.range "5" "8"))))))
(assert (str.in_re b (re.++ (re.++ (re.+ (str.to_re "104")) (re.* (str.to_re "266"))) (str.to_re "10"))))

(assert (<= (+ (* 4 (str.to_int x)) (str.to_int y) (* (- 3) (str.to_int z)) (* (- 6) (str.to_int a)) (- (str.to_int b))) 6))
(assert (= (+ (* 10 (str.len x)) (* 10 (str.len y)) (* 9 (str.len z)) (* (- 3) (str.len b))) 52))
(assert (<= (+ (* 9 (str.to_int x)) (* 3 (str.to_int y)) (* (- 8) (str.to_int z)) (* 3 (str.to_int a)) (* 2 (str.to_int b))) 13))

(check-sat)