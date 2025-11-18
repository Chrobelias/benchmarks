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

(assert (str.in_re x (re.++ (re.* (str.to_re "9")) (re.range "1" "9"))))
(assert (str.in_re y (re.+ (re.union (str.to_re "623") (re.union (re.* (str.to_re "724")) (str.to_re "405"))))))
(assert (str.in_re z (re.* (re.++ (re.+ (re.* (str.to_re "0"))) (str.to_re "412")))))
(assert (str.in_re a (re.++ (re.+ (re.* (re.range "5" "9"))) (re.+ (str.to_re "0")))))
(assert (str.in_re b (re.++ (str.to_re "479") (re.union (str.to_re "844") (re.+ (str.to_re "966"))))))

(assert (> (+ (* 8 (str.to_int x)) (* 7 (str.to_int y)) (* (- 2) (str.to_int z)) (* (- 2) (str.to_int a)) (* (- 4) (str.to_int b))) 49))
(assert (= (+ (* (- 6) (str.to_int x)) (* (- 3) (str.to_int y)) (* 2 (str.to_int z)) (- (str.to_int a)) (* (- 8) (str.to_int b))) 90))
(assert (>= (+ (* 2 (str.to_int x)) (* 9 (str.to_int y)) (* (- 2) (str.to_int z)) (* (- 3) (str.to_int a)) (* (- 6) (str.to_int b))) 50))
(assert (< (+ (* 6 (str.to_int x)) (* (- 5) (str.to_int y)) (- (str.to_int z)) (- (str.to_int a)) (* 6 (str.to_int b))) 85))
(assert (= (+ (str.len x) (* (- 2) (str.len y)) (* 4 (str.len z)) (* 7 (str.len a)) (* (- 5) (str.len b))) 4))
(assert (<= (+ (str.len y) (* 3 (str.len z)) (* 5 (str.len a)) (* (- 3) (str.len b))) 100))

(check-sat)