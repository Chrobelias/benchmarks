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

(assert (str.in_re x (re.+ (re.++ (str.to_re "260") (re.* (re.* (str.to_re "6")))))))
(assert (str.in_re y (re.++ (re.range "6" "8") (re.++ (re.union (re.+ (str.to_re "1")) (str.to_re "401")) (re.range "5" "8")))))
(assert (str.in_re z (re.* (re.* (re.++ (re.* (re.range "0" "9")) (str.to_re "334"))))))
(assert (str.in_re a (re.* (re.++ (str.to_re "582") (re.++ (re.+ (str.to_re "9")) (re.range "7" "9"))))))
(assert (str.in_re b (re.++ (str.to_re "3") (re.+ (str.to_re "2")))))

(assert (>= (+ (* 2 (str.len a)) (* 3 (str.to_int z))) 0))
(assert (= (+ (* (- 2) (str.to_int x)) (* 9 (str.to_int y)) (* 6 (str.to_int z)) (- (str.to_int b))) 30))
(assert (>= (+ (* (- 8) (str.to_int x)) (* (- 5) (str.to_int y)) (str.to_int a) (- (str.to_int b))) 57))
(assert (> (+ (* (- 5) (str.len x)) (* (- 6) (str.len y)) (* 7 (str.len z)) (* 10 (str.len a)) (* (- 3) (str.len b))) 100))

(check-sat)