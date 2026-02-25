(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= y (str.++ "70" x)))

(assert (str.in_re y (re.+ (re.union (re.range "0" "9") (re.+ (re.range "2" "7"))))))
(assert (str.in_re x (re.union (re.++ (re.+ (str.to_re "15")) (str.to_re "48")) (re.range "6" "9"))))

(assert (< (+ (* 6 (str.len x)) (* (- 8) (str.to_int x)) (* (- 10) (str.to_int y))) 91))

(check-sat)