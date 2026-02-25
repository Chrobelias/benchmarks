(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= y (str.++ x "49")))

(assert (str.in_re x (re.++ (re.++ (str.to_re "3") (re.* (str.to_re "4"))) (re.* (re.range "5" "9")))))
(assert (str.in_re y (re.+ (re.union (re.range "1" "9") (re.* (re.* (str.to_re "7")))))))

(assert (>= (+ (- (str.to_int x)) (* (- 3) (str.to_int y))) 0))
(assert (>= (+ (* (- 8) (str.len y)) (* 10 (str.to_int x))) 100))
(assert (>= (+ (* 9 (str.to_int x)) (* 3 (str.to_int y))) 51))

(check-sat)