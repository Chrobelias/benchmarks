(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= y (str.++ a z "30" x)))

(assert (str.in_re a (re.* (re.++ (re.range "1" "6") (re.+ (str.to_re "56"))))))
(assert (str.in_re y (re.+ (re.range "0" "7"))))
(assert (str.in_re z (re.++ (re.range "2" "8") (re.++ (re.+ (str.to_re "115")) (re.range "2" "4")))))
(assert (str.in_re x (re.++ (re.+ (re.* (str.to_re "9"))) (re.+ (str.to_re "6")))))

(assert (< (+ (* (- 2) (str.len x)) (* (- 6) (str.len y)) (* 5 (str.len z)) (* 5 (str.len a))) 18))
(assert (>= (+ (* 6 (str.to_int y)) (* (- 2) (str.to_int z)) (- (str.to_int a))) 11))

(check-sat)