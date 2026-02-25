(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "78" y)))

(assert (str.in_re x (re.+ (re.+ (re.union (re.range "3" "9") (re.* (re.range "7" "9")))))))
(assert (str.in_re y (re.+ (re.++ (re.range "5" "8") (re.* (re.range "3" "8"))))))

(assert (>= (+ (* 6 (str.len x)) (- (str.to_int y))) 4))
(assert (>= (+ (* (- 9) (str.len x)) (* (- 2) (str.len y)) (* 7 (str.to_int y))) 91))

(check-sat)