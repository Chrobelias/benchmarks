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

(assert (str.in_re x (re.* (re.union (str.to_re "27") (re.+ (str.to_re "847"))))))
(assert (str.in_re y (re.union (re.++ (re.* (str.to_re "1")) (str.to_re "194")) (str.to_re "16"))))
(assert (str.in_re z (re.++ (re.range "6" "9") (re.* (re.+ (str.to_re "38"))))))
(assert (str.in_re a (re.union (re.* (str.to_re "744")) (str.to_re "46"))))
(assert (str.in_re b (re.++ (re.union (str.to_re "578") (re.* (str.to_re "148"))) (str.to_re "799"))))

(assert (<= (+ (* 8 (str.to_int x)) (- (str.to_int y)) (* (- 9) (str.to_int z)) (* (- 9) (str.to_int a)) (* 5 (str.to_int b))) 37))
(assert (= (+ (* 8 (str.len y)) (* (- 4) (str.len z)) (* (- 10) (str.to_int a)) (* 5 (str.to_int b))) 27))
(assert (>= (+ (* (- 5) (str.len x)) (* 4 (str.len y)) (* 3 (str.len z)) (* 4 (str.len a)) (* 2 (str.len b))) 75))

(check-sat)