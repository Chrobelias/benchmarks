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

(assert (str.in_re x (re.+ (re.union (re.range "4" "9") (str.to_re "348")))))
(assert (str.in_re y (re.* (re.union (re.+ (str.to_re "29")) (re.+ (re.range "7" "9"))))))
(assert (str.in_re z (re.+ (re.++ (re.union (str.to_re "584") (str.to_re "197")) (str.to_re "53")))))
(assert (str.in_re a (re.* (re.+ (re.++ (re.+ (str.to_re "39")) (str.to_re "239"))))))
(assert (str.in_re b (re.union (str.to_re "336") (re.* (str.to_re "458")))))

(assert (<= (+ (* 6 (str.len b)) (* 6 (str.to_int x)) (* 10 (str.to_int z)) (* (- 2) (str.to_int b))) 8))
(assert (<= (+ (* 8 (str.len y)) (- (str.len z)) (* 2 (str.len a)) (* (- 4) (str.len b))) 42))
(assert (< (+ (* (- 8) (str.len y)) (* (- 10) (str.len a)) (* 4 (str.to_int y)) (* 2 (str.to_int a)) (* 6 (str.to_int b))) 8))
(assert (> (+ (* 5 (str.to_int x)) (* (- 7) (str.to_int y)) (* 10 (str.to_int z)) (* 5 (str.to_int a)) (* 2 (str.to_int b))) 85))

(check-sat)